.class public abstract Lcom/lidroid/xutils/task/PriorityAsyncTask;
.super Ljava/lang/Object;
.source "PriorityAsyncTask.java"

# interfaces
.implements Lcom/lidroid/xutils/task/TaskHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;,
        Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;,
        Lcom/lidroid/xutils/task/PriorityAsyncTask$WorkerRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lidroid/xutils/task/TaskHandler;"
    }
.end annotation


# static fields
.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mExecuteInvoked:Z

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/lidroid/xutils/task/PriorityAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/task/PriorityAsyncTask$WorkerRunnable<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field private priority:Lcom/lidroid/xutils/task/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;-><init>(Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;)V

    sput-object v0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->sHandler:Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;

    .line 38
    new-instance v0, Lcom/lidroid/xutils/task/PriorityExecutor;

    invoke-direct {v0}, Lcom/lidroid/xutils/task/PriorityExecutor;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mExecuteInvoked:Z

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Lcom/lidroid/xutils/task/PriorityAsyncTask$1;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask$1;-><init>(Lcom/lidroid/xutils/task/PriorityAsyncTask;)V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mWorker:Lcom/lidroid/xutils/task/PriorityAsyncTask$WorkerRunnable;

    .line 71
    new-instance v0, Lcom/lidroid/xutils/task/PriorityAsyncTask$2;

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mWorker:Lcom/lidroid/xutils/task/PriorityAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/task/PriorityAsyncTask$2;-><init>(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 86
    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .line 361
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcom/lidroid/xutils/task/PriorityAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$2(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3(Lcom/lidroid/xutils/task/PriorityAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 326
    sget-object v0, Lcom/lidroid/xutils/task/Priority;->DEFAULT:Lcom/lidroid/xutils/task/Priority;

    invoke-static {p0, v0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->execute(Ljava/lang/Runnable;Lcom/lidroid/xutils/task/Priority;)V

    .line 327
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Lcom/lidroid/xutils/task/Priority;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "priority"    # Lcom/lidroid/xutils/task/Priority;

    .line 338
    sget-object v0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/lidroid/xutils/task/PriorityRunnable;

    invoke-direct {v1, p1, p0}, Lcom/lidroid/xutils/task/PriorityRunnable;-><init>(Lcom/lidroid/xutils/task/Priority;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 339
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 362
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 364
    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 367
    :goto_0
    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    sget-object v0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->sHandler:Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;

    .line 98
    new-instance v1, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;-><init>(Lcom/lidroid/xutils/task/PriorityAsyncTask;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v0, v2, v1}, Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 99
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 100
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 90
    .local v0, "wasTaskInvoked":Z
    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 242
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->cancel(Z)Z

    .line 243
    return-void
.end method

.method public final cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .line 213
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 214
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/lidroid/xutils/task/PriorityAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 290
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    sget-object v0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;
    .locals 3
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/lidroid/xutils/task/PriorityAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 302
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-boolean v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mExecuteInvoked:Z

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mExecuteInvoked:Z

    .line 309
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->onPreExecute()V

    .line 311
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mWorker:Lcom/lidroid/xutils/task/PriorityAsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/lidroid/xutils/task/PriorityAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 312
    new-instance v0, Lcom/lidroid/xutils/task/PriorityRunnable;

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->priority:Lcom/lidroid/xutils/task/Priority;

    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v1, v2}, Lcom/lidroid/xutils/task/PriorityRunnable;-><init>(Lcom/lidroid/xutils/task/Priority;Ljava/lang/Runnable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 314
    return-object p0

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 261
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 279
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/lidroid/xutils/task/Priority;
    .locals 1

    .line 50
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->priority:Lcom/lidroid/xutils/task/Priority;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 199
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 247
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .line 186
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 170
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->onCancelled()V

    .line 171
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 141
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 126
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method public pause()V
    .locals 0

    .line 234
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 355
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    sget-object v0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->sHandler:Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;

    const/4 v1, 0x2

    .line 357
    new-instance v2, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/lidroid/xutils/task/PriorityAsyncTask$AsyncTaskResult;-><init>(Lcom/lidroid/xutils/task/PriorityAsyncTask;[Ljava/lang/Object;)V

    .line 356
    invoke-virtual {v0, v1, v2}, Lcom/lidroid/xutils/task/PriorityAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 359
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 238
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method public setPriority(Lcom/lidroid/xutils/task/Priority;)V
    .locals 0
    .param p1, "priority"    # Lcom/lidroid/xutils/task/Priority;

    .line 54
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    iput-object p1, p0, Lcom/lidroid/xutils/task/PriorityAsyncTask;->priority:Lcom/lidroid/xutils/task/Priority;

    .line 55
    return-void
.end method

.method public supportCancel()Z
    .locals 1

    .line 229
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public supportPause()Z
    .locals 1

    .line 219
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public supportResume()Z
    .locals 1

    .line 224
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityAsyncTask;, "Lcom/lidroid/xutils/task/PriorityAsyncTask<TParams;TProgress;TResult;>;"
    const/4 v0, 0x0

    return v0
.end method
