.class public Lcom/tpms/utils/DirSizeLimitUtil;
.super Ljava/lang/Object;
.source "DirSizeLimitUtil.java"


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field private limitSize:D

.field private mDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "DirSizeLimitUtil"

    sput-object v0, Lcom/tpms/utils/DirSizeLimitUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;D)V
    .locals 3
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "maxSize"    # D

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/tpms/utils/DirSizeLimitUtil;->mDir:Ljava/lang/String;

    .line 96
    const-wide/high16 v0, -0x3e20000000000000L    # -2.147483648E9

    iput-wide v0, p0, Lcom/tpms/utils/DirSizeLimitUtil;->limitSize:D

    .line 41
    iput-object p1, p0, Lcom/tpms/utils/DirSizeLimitUtil;->mDir:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/tpms/utils/DirSizeLimitUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set limitSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-wide p2, p0, Lcom/tpms/utils/DirSizeLimitUtil;->limitSize:D

    .line 44
    return-void
.end method

.method private calcDvrSize()D
    .locals 9

    .line 76
    const-wide/16 v0, 0x0

    .line 78
    .local v0, "mDvrSize":D
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tpms/utils/DirSizeLimitUtil;->mDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 81
    .local v3, "files":[Ljava/io/File;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 82
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float v7, v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v7

    .line 81
    .end local v6    # "f":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 86
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    :cond_0
    goto :goto_1

    .line 84
    :catch_0
    move-exception v2

    .line 88
    :goto_1
    sget-object v2, Lcom/tpms/utils/DirSizeLimitUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDvrSize files "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-wide v0
.end method

.method public static calcTotalSize(Ljava/lang/String;)D
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 48
    const-wide/16 v0, 0x0

    .line 50
    .local v0, "mDvrSize":D
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v2, "file":Ljava/io/File;
    invoke-static {v2}, Lcom/tpms/utils/DirSizeLimitUtil;->getFileSize(Ljava/io/File;)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    .line 54
    .end local v2    # "file":Ljava/io/File;
    goto :goto_0

    .line 52
    :catch_0
    move-exception v2

    .line 56
    :goto_0
    sget-object v2, Lcom/tpms/utils/DirSizeLimitUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDvrSize files "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-wide v0
.end method

.method private deleteOldFile()V
    .locals 5

    .line 111
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tpms/utils/DirSizeLimitUtil;->mDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 113
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 115
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 116
    .local v3, "filels":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v4, Lcom/tpms/utils/DirSizeLimitUtil$1;

    invoke-direct {v4, p0}, Lcom/tpms/utils/DirSizeLimitUtil$1;-><init>(Lcom/tpms/utils/DirSizeLimitUtil;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 131
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 136
    .end local v3    # "filels":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_0
    return-void
.end method

.method public static getFileSize(Ljava/io/File;)D
    .locals 6
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    const-wide/16 v0, 0x0

    .line 63
    .local v0, "size":D
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 64
    .local v2, "flist":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 65
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/tpms/utils/DirSizeLimitUtil;->getFileSize(Ljava/io/File;)D

    move-result-wide v4

    add-double/2addr v0, v4

    goto :goto_1

    .line 68
    :cond_0
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v4

    .line 64
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .end local v3    # "i":I
    :cond_1
    return-wide v0
.end method


# virtual methods
.method public sizeProc()V
    .locals 5

    .line 101
    iget-wide v0, p0, Lcom/tpms/utils/DirSizeLimitUtil;->limitSize:D

    .line 102
    .local v0, "limitSizeok":D
    sget-object v2, Lcom/tpms/utils/DirSizeLimitUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "limitSizeOK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0}, Lcom/tpms/utils/DirSizeLimitUtil;->calcDvrSize()D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    .line 104
    sget-object v2, Lcom/tpms/utils/DirSizeLimitUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "overy limitSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0}, Lcom/tpms/utils/DirSizeLimitUtil;->deleteOldFile()V

    .line 106
    invoke-virtual {p0}, Lcom/tpms/utils/DirSizeLimitUtil;->sizeProc()V

    .line 108
    :cond_0
    return-void
.end method
