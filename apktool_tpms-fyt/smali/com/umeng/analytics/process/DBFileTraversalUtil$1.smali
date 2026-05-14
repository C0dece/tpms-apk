.class final Lcom/umeng/analytics/process/DBFileTraversalUtil$1;
.super Ljava/lang/Object;
.source "DBFileTraversalUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/process/DBFileTraversalUtil;->traverseDBFiles(Ljava/lang/String;Lcom/umeng/commonsdk/utils/FileLockCallback;Lcom/umeng/analytics/process/DBFileTraversalUtil$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/umeng/commonsdk/utils/FileLockCallback;

.field final synthetic c:Lcom/umeng/analytics/process/DBFileTraversalUtil$a;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;Lcom/umeng/analytics/process/DBFileTraversalUtil$a;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/umeng/analytics/process/DBFileTraversalUtil$1;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/umeng/analytics/process/DBFileTraversalUtil$1;->b:Lcom/umeng/commonsdk/utils/FileLockCallback;

    iput-object p3, p0, Lcom/umeng/analytics/process/DBFileTraversalUtil$1;->c:Lcom/umeng/analytics/process/DBFileTraversalUtil$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 37
    iget-object v0, p0, Lcom/umeng/analytics/process/DBFileTraversalUtil$1;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 38
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "MobclickRT"

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 39
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".db"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 40
    invoke-static {}, Lcom/umeng/analytics/process/DBFileTraversalUtil;->a()Lcom/umeng/commonsdk/utils/FileLockUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/umeng/analytics/process/DBFileTraversalUtil$1;->b:Lcom/umeng/commonsdk/utils/FileLockCallback;

    invoke-virtual {v5, v4, v6}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;)V

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--->>> file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/process/DBFileTraversalUtil$1;->c:Lcom/umeng/analytics/process/DBFileTraversalUtil$a;

    if-eqz v0, :cond_2

    .line 46
    invoke-interface {v0}, Lcom/umeng/analytics/process/DBFileTraversalUtil$a;->a()V

    .line 48
    :cond_2
    const-string v0, "--->>> end *** "

    invoke-static {v3, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method
