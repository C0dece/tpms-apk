.class Lcom/lidroid/xutils/task/PriorityAsyncTask$2;
.super Ljava/util/concurrent/FutureTask;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/xutils/task/PriorityAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/xutils/task/PriorityAsyncTask;


# direct methods
.method constructor <init>(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    .local p2, "$anonymous0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask$2;->this$0:Lcom/lidroid/xutils/task/PriorityAsyncTask;

    .line 71
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 4

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask$2;->this$0:Lcom/lidroid/xutils/task/PriorityAsyncTask;

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask$2;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->access$3(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask$2;->this$0:Lcom/lidroid/xutils/task/PriorityAsyncTask;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->access$3(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/RuntimeException;

    .line 80
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 79
    const-string v3, "An error occured while executing doInBackground()"

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 76
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lidroid/xutils/util/LogUtils;->d(Ljava/lang/String;)V

    .line 84
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method
