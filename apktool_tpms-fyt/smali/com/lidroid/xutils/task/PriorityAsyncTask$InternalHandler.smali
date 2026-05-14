.class Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/task/PriorityAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 372
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 373
    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;)V
    .locals 0

    .line 371
    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 378
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;

    .line 379
    .local v0, "result":Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;, "Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult<*>;"
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    iget-object v1, v0, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;->mTask:Lcom/lidroid/xutils/task/PriorityAsyncTask;

    iget-object v2, v0, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v1, v0, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;->mTask:Lcom/lidroid/xutils/task/PriorityAsyncTask;

    iget-object v2, v0, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->access$0(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/lang/Object;)V

    .line 383
    nop

    .line 388
    :goto_0
    return-void
.end method
