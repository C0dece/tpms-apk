.class Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LruDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;

    .line 923
    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    .line 924
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 925
    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Ljava/io/OutputStream;Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;)V
    .locals 0

    .line 923
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 949
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    goto :goto_0

    :catchall_0
    move-exception v0

    .line 951
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    .line 953
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 3

    .line 958
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    goto :goto_0

    :catchall_0
    move-exception v0

    .line 960
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    .line 962
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I

    .line 930
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    goto :goto_0

    :catchall_0
    move-exception v0

    .line 932
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    .line 934
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 939
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 940
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    goto :goto_0

    :catchall_0
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    .line 944
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
