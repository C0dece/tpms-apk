.class Lde/greenrobot/event/util/AsyncExecutor$1;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/greenrobot/event/util/AsyncExecutor;->execute(Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/greenrobot/event/util/AsyncExecutor;

.field private final synthetic val$runnable:Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;


# direct methods
.method constructor <init>(Lde/greenrobot/event/util/AsyncExecutor;Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lde/greenrobot/event/util/AsyncExecutor$1;->this$0:Lde/greenrobot/event/util/AsyncExecutor;

    iput-object p2, p0, Lde/greenrobot/event/util/AsyncExecutor$1;->val$runnable:Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 115
    :try_start_0
    iget-object v0, p0, Lde/greenrobot/event/util/AsyncExecutor$1;->val$runnable:Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;

    invoke-interface {v0}, Lde/greenrobot/event/util/AsyncExecutor$RunnableEx;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lde/greenrobot/event/util/AsyncExecutor$1;->this$0:Lde/greenrobot/event/util/AsyncExecutor;

    invoke-static {v1}, Lde/greenrobot/event/util/AsyncExecutor;->access$1(Lde/greenrobot/event/util/AsyncExecutor;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    .local v1, "event":Ljava/lang/Object;
    nop

    .line 124
    instance-of v2, v1, Lde/greenrobot/event/util/HasExecutionScope;

    if-eqz v2, :cond_0

    .line 125
    move-object v2, v1

    check-cast v2, Lde/greenrobot/event/util/HasExecutionScope;

    iget-object v3, p0, Lde/greenrobot/event/util/AsyncExecutor$1;->this$0:Lde/greenrobot/event/util/AsyncExecutor;

    invoke-static {v3}, Lde/greenrobot/event/util/AsyncExecutor;->access$2(Lde/greenrobot/event/util/AsyncExecutor;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lde/greenrobot/event/util/HasExecutionScope;->setExecutionScope(Ljava/lang/Object;)V

    .line 127
    :cond_0
    iget-object v2, p0, Lde/greenrobot/event/util/AsyncExecutor$1;->this$0:Lde/greenrobot/event/util/AsyncExecutor;

    invoke-static {v2}, Lde/greenrobot/event/util/AsyncExecutor;->access$3(Lde/greenrobot/event/util/AsyncExecutor;)Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "event":Ljava/lang/Object;
    :goto_0
    return-void

    .line 120
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 121
    .local v1, "e1":Ljava/lang/Exception;
    sget-object v2, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    const-string v3, "Original exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not create failure event"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
