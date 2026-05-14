.class Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "PriorityObjectBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private current:Lcom/lidroid/xutils/task/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private currentElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private lastRet:Lcom/lidroid/xutils/task/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;


# direct methods
.method constructor <init>(Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;)V
    .locals 1

    .line 502
    iput-object p1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    invoke-virtual {p1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 505
    :try_start_0
    iget-object v0, p1, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v0, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    .line 506
    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    :cond_0
    invoke-virtual {p1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 511
    return-void

    .line 508
    :catchall_0
    move-exception v0

    .line 509
    invoke-virtual {p1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 510
    throw v0
.end method

.method private nextNode(Lcom/lidroid/xutils/task/Node;)Lcom/lidroid/xutils/task/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;)",
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;"
        }
    .end annotation

    .line 519
    .local p1, "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :goto_0
    iget-object v0, p1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    .line 520
    .local v0, "s":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    if-ne v0, p1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    iget-object v1, v1, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v1, v1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    return-object v1

    .line 522
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 524
    :cond_1
    move-object p1, v0

    .line 518
    .end local v0    # "s":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    goto :goto_0

    .line 523
    .restart local v0    # "s":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->currentElement:Ljava/lang/Object;

    .line 534
    .local v0, "x":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    iput-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->lastRet:Lcom/lidroid/xutils/task/Node;

    .line 535
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    invoke-direct {p0, v1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->nextNode(Lcom/lidroid/xutils/task/Node;)Lcom/lidroid/xutils/task/Node;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->current:Lcom/lidroid/xutils/task/Node;

    .line 536
    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    nop

    .line 539
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 537
    return-object v0

    .line 532
    .end local v0    # "x":Ljava/lang/Object;, "TE;"
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    :catchall_0
    move-exception v0

    .line 539
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 540
    throw v0
.end method

.method public remove()V
    .locals 4

    .line 544
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->lastRet:Lcom/lidroid/xutils/task/Node;

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->lastRet:Lcom/lidroid/xutils/task/Node;

    .line 549
    .local v0, "node":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->lastRet:Lcom/lidroid/xutils/task/Node;

    .line 550
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    iget-object v1, v1, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    .local v1, "trail":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    iget-object v2, v1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    .line 551
    .local v2, "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    nop

    :goto_0
    if-nez v2, :cond_0

    .line 558
    .end local v0    # "node":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .end local v1    # "trail":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .end local v2    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    goto :goto_1

    .line 553
    .restart local v0    # "node":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .restart local v1    # "trail":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .restart local v2    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :cond_0
    if-ne v2, v0, :cond_1

    .line 554
    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v3, v2, v1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->unlink(Lcom/lidroid/xutils/task/Node;Lcom/lidroid/xutils/task/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    nop

    .line 559
    .end local v0    # "node":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .end local v1    # "trail":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .end local v2    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :goto_1
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 561
    return-void

    .line 552
    .restart local v0    # "node":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .restart local v1    # "trail":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .restart local v2    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :cond_1
    move-object v1, v2

    :try_start_1
    iget-object v3, v2, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    goto :goto_0

    .line 558
    .end local v0    # "node":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .end local v1    # "trail":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .end local v2    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :catchall_0
    move-exception v0

    .line 559
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;->this$0:Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-virtual {v1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 560
    throw v0

    .line 545
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
