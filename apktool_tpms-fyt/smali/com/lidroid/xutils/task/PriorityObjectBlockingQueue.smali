.class public Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;
.super Ljava/util/AbstractQueue;
.source "PriorityObjectBlockingQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5fcfb35fbf1a7e0aL


# instance fields
.field private final capacity:I

.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field transient head:Lcom/lidroid/xutils/task/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private transient last:Lcom/lidroid/xutils/task/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field private final putLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final takeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 154
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;-><init>(I)V

    .line 155
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 157
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 63
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 158
    if-lez p1, :cond_0

    .line 159
    iput p1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    .line 160
    new-instance v0, Lcom/lidroid/xutils/task/Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/task/Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    .line 161
    return-void

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;-><init>(I)V

    .line 165
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 166
    .local v0, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, "n":I
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local v1    # "n":I
    nop

    .line 179
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 181
    return-void

    .line 169
    .restart local v1    # "n":I
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Object;

    .line 170
    .local v3, "e":Ljava/lang/Object;, "TE;"
    if-eqz v3, :cond_2

    .line 172
    iget v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-eq v1, v4, :cond_1

    .line 174
    new-instance v4, Lcom/lidroid/xutils/task/Node;

    invoke-direct {v4, v3}, Lcom/lidroid/xutils/task/Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Queue full"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    throw v2

    .line 171
    .restart local v0    # "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :cond_2
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    .end local v0    # "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .end local v1    # "n":I
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    .restart local v0    # "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :catchall_0
    move-exception v1

    .line 179
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 180
    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private _dequeue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    .line 129
    .local v0, "h":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    iget-object v1, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    .line 130
    .local v1, "first":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    iput-object v0, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    .line 131
    iput-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    .line 132
    invoke-virtual {v1}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 133
    .local v2, "x":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/lidroid/xutils/task/Node;->setValue(Ljava/lang/Object;)V

    .line 134
    return-object v2
.end method

.method private _enqueue(Lcom/lidroid/xutils/task/Node;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    .local p1, "node":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    const/4 v0, 0x0

    .line 105
    .local v0, "added":Z
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    .line 106
    .local v1, "curr":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    const/4 v2, 0x0

    .line 108
    .local v2, "temp":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    nop

    :goto_0
    iget-object v3, v1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    if-nez v3, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    iget-object v2, v1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    .line 110
    invoke-virtual {v2}, Lcom/lidroid/xutils/task/Node;->getPriority()Lcom/lidroid/xutils/task/Priority;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lidroid/xutils/task/Priority;->ordinal()I

    move-result v3

    invoke-virtual {p1}, Lcom/lidroid/xutils/task/Node;->getPriority()Lcom/lidroid/xutils/task/Priority;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lidroid/xutils/task/Priority;->ordinal()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 111
    iput-object p1, v1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    .line 112
    iput-object v2, p1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    .line 113
    const/4 v0, 0x1

    .line 114
    nop

    .line 119
    :goto_1
    if-nez v0, :cond_1

    .line 120
    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    iput-object p1, v3, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    iput-object p1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    .line 122
    :cond_1
    return-void

    .line 116
    :cond_2
    iget-object v1, v1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    goto :goto_0
.end method

.method private declared-synchronized opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;)TE;"
        }
    .end annotation

    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    .local p1, "node":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    monitor-enter p0

    .line 93
    if-nez p1, :cond_0

    .line 94
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->_dequeue()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 96
    .end local p0    # "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->_enqueue(Lcom/lidroid/xutils/task/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 92
    .end local p1    # "node":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 589
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 591
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 592
    new-instance v0, Lcom/lidroid/xutils/task/Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/task/Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    .line 597
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 598
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 599
    nop

    .line 602
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    return-void

    .line 600
    .restart local v0    # "item":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 595
    .end local v0    # "item":Ljava/lang/Object;, "TE;"
    goto :goto_0
.end method

.method private signalNotEmpty()V
    .locals 2

    .line 70
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 71
    .local v0, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    nop

    .line 75
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 77
    return-void

    .line 74
    :catchall_0
    move-exception v1

    .line 75
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 76
    throw v1
.end method

.method private signalNotFull()V
    .locals 2

    .line 83
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 84
    .local v0, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    nop

    .line 88
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 90
    return-void

    .line 87
    :catchall_0
    move-exception v1

    .line 88
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 89
    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 567
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 570
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 573
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v0, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    .local v0, "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :goto_0
    if-nez v0, :cond_0

    .line 577
    .end local v0    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    nop

    .line 579
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 581
    return-void

    .line 574
    .restart local v0    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 573
    iget-object v1, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 578
    .end local v0    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :catchall_0
    move-exception v0

    .line 579
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 580
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 433
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    .local v0, "h":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :goto_0
    iget-object v1, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    move-object v2, v1

    .local v2, "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    if-nez v1, :cond_1

    .line 439
    .end local v0    # "h":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .end local v2    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    .line 441
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    iget v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_0

    .line 442
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 446
    return-void

    .line 436
    .restart local v0    # "h":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .restart local v2    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :cond_1
    :try_start_1
    iput-object v0, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    .line 437
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/lidroid/xutils/task/Node;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    move-object v0, v2

    goto :goto_0

    .line 443
    .end local v0    # "h":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .end local v2    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :catchall_0
    move-exception v0

    .line 444
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 445
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 386
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 389
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v1, v1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v1, "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :goto_0
    if-nez v1, :cond_1

    .line 394
    .end local v1    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 392
    return v0

    .line 390
    .restart local v1    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 394
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 391
    const/4 v0, 0x1

    return v0

    .line 389
    :cond_2
    :try_start_2
    iget-object v2, v1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 393
    .end local v1    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :catchall_0
    move-exception v0

    .line 394
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 395
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    .line 449
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 10
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 453
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 455
    if-eq p1, p0, :cond_8

    .line 457
    const/4 v1, 0x0

    if-gtz p2, :cond_0

    .line 458
    return v1

    .line 459
    :cond_0
    const/4 v2, 0x0

    .line 460
    .local v2, "signalNotFull":Z
    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 461
    .local v3, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 463
    :try_start_0
    iget-object v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 465
    .local v4, "n":I
    iget-object v5, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    .line 466
    .local v5, "h":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    const/4 v6, 0x0

    .line 468
    .local v6, "i":I
    nop

    :goto_0
    const/4 v7, 0x1

    if-lt v6, v4, :cond_4

    .line 476
    nop

    .line 479
    if-lez v6, :cond_2

    .line 481
    iput-object v5, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    .line 482
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v8, v6

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v0

    iget v8, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v8, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v2, v1

    .line 486
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 487
    if-eqz v2, :cond_3

    .line 488
    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    .line 476
    :cond_3
    return v4

    .line 469
    :cond_4
    :try_start_1
    iget-object v8, v5, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    .line 470
    .local v8, "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    invoke-virtual {v8}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-virtual {v8, v0}, Lcom/lidroid/xutils/task/Node;->setValue(Ljava/lang/Object;)V

    .line 472
    iput-object v5, v5, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    move-object v5, v8

    .line 474
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 477
    .end local v8    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :catchall_0
    move-exception v0

    .line 479
    if-lez v6, :cond_6

    .line 481
    :try_start_2
    iput-object v5, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    .line 482
    iget-object v8, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v9, v6

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v8

    iget v9, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v8, v9, :cond_5

    const/4 v1, 0x1

    :cond_5
    move v2, v1

    .line 484
    :cond_6
    nop

    .end local v2    # "signalNotFull":Z
    .end local v3    # "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    .end local p2    # "maxElements":I
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 485
    .end local v4    # "n":I
    .end local v5    # "h":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .end local v6    # "i":I
    .restart local v2    # "signalNotFull":Z
    .restart local v3    # "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local p1    # "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    .restart local p2    # "maxElements":I
    :catchall_1
    move-exception v0

    .line 486
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 487
    if-eqz v2, :cond_7

    .line 488
    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    .line 489
    :cond_7
    throw v0

    .line 456
    .end local v2    # "signalNotFull":Z
    .end local v3    # "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 454
    :cond_9
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method fullyLock()V
    .locals 1

    .line 141
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 142
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 143
    return-void
.end method

.method fullyUnlock()V
    .locals 1

    .line 149
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 150
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 151
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 493
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    new-instance v0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;-><init>(Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 243
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_4

    .line 244
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 245
    .local v0, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 246
    return v3

    .line 247
    :cond_0
    const/4 v1, -0x1

    .line 248
    .local v1, "c":I
    new-instance v2, Lcom/lidroid/xutils/task/Node;

    invoke-direct {v2, p1}, Lcom/lidroid/xutils/task/Node;-><init>(Ljava/lang/Object;)V

    .line 249
    .local v2, "node":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    iget-object v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 250
    .local v4, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 252
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge v5, v6, :cond_1

    .line 253
    invoke-direct {p0, v2}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;

    .line 254
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    move v1, v5

    .line 255
    add-int/lit8 v5, v1, 0x1

    iget v6, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge v5, v6, :cond_1

    .line 256
    iget-object v5, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_1
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 261
    if-nez v1, :cond_2

    .line 262
    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotEmpty()V

    .line 263
    :cond_2
    if-ltz v1, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3

    .line 258
    :catchall_0
    move-exception v3

    .line 259
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 260
    throw v3

    .line 243
    .end local v0    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v1    # "c":I
    .end local v2    # "node":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .end local v4    # "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_4
    const/4 v0, 0x0

    throw v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 8
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 218
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_4

    .line 219
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 220
    .local v0, "nanos":J
    const/4 v2, -0x1

    .line 221
    .local v2, "c":I
    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 222
    .local v3, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 223
    .local v4, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 225
    nop

    :goto_0
    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-eq v5, v6, :cond_2

    .line 230
    new-instance v5, Lcom/lidroid/xutils/task/Node;

    invoke-direct {v5, p1}, Lcom/lidroid/xutils/task/Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v5}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    move v2, v5

    .line 232
    add-int/lit8 v5, v2, 0x1

    iget v6, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge v5, v6, :cond_0

    .line 233
    iget-object v5, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 237
    if-nez v2, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotEmpty()V

    .line 239
    :cond_1
    const/4 v5, 0x1

    return v5

    .line 226
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-gtz v7, :cond_3

    .line 235
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 227
    const/4 v5, 0x0

    return v5

    .line 228
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v0, v5

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v5

    .line 235
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 236
    throw v5

    .line 218
    .end local v0    # "nanos":J
    .end local v2    # "c":I
    .end local v3    # "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 337
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 338
    return-object v1

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 340
    .local v0, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 342
    :try_start_0
    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v2, v2, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    .local v2, "first":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    if-nez v2, :cond_1

    .line 348
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 344
    return-object v1

    .line 346
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 346
    return-object v1

    .line 347
    .end local v2    # "first":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :catchall_0
    move-exception v1

    .line 348
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 349
    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 314
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 315
    .local v0, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 316
    return-object v2

    .line 317
    :cond_0
    const/4 v1, 0x0

    .line 318
    .local v1, "x":Ljava/lang/Object;, "TE;"
    const/4 v3, -0x1

    .line 319
    .local v3, "c":I
    iget-object v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 320
    .local v4, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 322
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-lez v5, :cond_1

    .line 323
    invoke-direct {p0, v2}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 324
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v2

    move v3, v2

    .line 325
    const/4 v2, 0x1

    if-le v3, v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :cond_1
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 331
    iget v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v3, v2, :cond_2

    .line 332
    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    .line 333
    :cond_2
    return-object v1

    .line 328
    :catchall_0
    move-exception v2

    .line 329
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 330
    throw v2
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 10
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 289
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    const/4 v0, 0x0

    .line 290
    .local v0, "x":Ljava/lang/Object;, "TE;"
    const/4 v1, -0x1

    .line 291
    .local v1, "c":I
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 292
    .local v2, "nanos":J
    iget-object v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 293
    .local v4, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v5, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 294
    .local v5, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 296
    nop

    :goto_0
    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 301
    invoke-direct {p0, v7}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .line 302
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v6

    move v1, v6

    .line 303
    const/4 v6, 0x1

    if-le v1, v6, :cond_0

    .line 304
    iget-object v6, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_0
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 308
    iget v6, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v1, v6, :cond_1

    .line 309
    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    .line 310
    :cond_1
    return-object v0

    .line 297
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v6, v2, v8

    if-gtz v6, :cond_3

    .line 306
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 298
    return-object v7

    .line 299
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v6, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v2, v6

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v6

    .line 306
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 307
    goto :goto_2

    :goto_1
    throw v6

    :goto_2
    goto :goto_1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_3

    .line 195
    const/4 v0, -0x1

    .line 196
    .local v0, "c":I
    new-instance v1, Lcom/lidroid/xutils/task/Node;

    invoke-direct {v1, p1}, Lcom/lidroid/xutils/task/Node;-><init>(Ljava/lang/Object;)V

    .line 197
    .local v1, "node":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 198
    .local v2, "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 199
    .local v3, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 201
    nop

    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-eq v4, v5, :cond_2

    .line 204
    invoke-direct {p0, v1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;

    .line 205
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    move v0, v4

    .line 206
    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge v4, v5, :cond_0

    .line 207
    iget-object v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 211
    if-nez v0, :cond_1

    .line 212
    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotEmpty()V

    .line 213
    :cond_1
    return-void

    .line 202
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v4

    .line 209
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 210
    throw v4

    .line 192
    .end local v0    # "c":I
    .end local v1    # "node":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .end local v2    # "putLock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v3    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public remainingCapacity()I
    .locals 2

    .line 188
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    iget v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 368
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    .local v1, "trail":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    iget-object v2, v1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    .local v2, "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    nop

    :goto_0
    if-nez v2, :cond_1

    .line 381
    .end local v1    # "trail":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .end local v2    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 379
    return v0

    .line 374
    .restart local v1    # "trail":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .restart local v2    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 375
    invoke-virtual {p0, v2, v1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->unlink(Lcom/lidroid/xutils/task/Node;Lcom/lidroid/xutils/task/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 376
    const/4 v0, 0x1

    return v0

    .line 373
    :cond_2
    move-object v1, v2

    :try_start_2
    iget-object v3, v2, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v3

    goto :goto_0

    .line 380
    .end local v1    # "trail":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .end local v2    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :catchall_0
    move-exception v0

    .line 381
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 382
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public size()I
    .locals 1

    .line 184
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 268
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    const/4 v0, -0x1

    .line 269
    .local v0, "c":I
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 270
    .local v1, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 271
    .local v2, "takeLock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 273
    nop

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eqz v3, :cond_2

    .line 276
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;

    move-result-object v3

    .line 277
    .local v3, "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v4

    move v0, v4

    .line 278
    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    .line 279
    iget-object v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 283
    iget v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v0, v4, :cond_1

    .line 284
    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    .line 285
    :cond_1
    return-object v3

    .line 274
    .end local v3    # "x":Ljava/lang/Object;, "TE;"
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v3

    .line 281
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 282
    goto :goto_2

    :goto_1
    throw v3

    :goto_2
    goto :goto_1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .line 399
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 402
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 403
    .local v1, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 404
    .local v2, "k":I
    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v3, v3, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :goto_0
    if-nez v3, :cond_0

    .line 406
    .end local v3    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    nop

    .line 408
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 406
    return-object v1

    .line 405
    .restart local v3    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    :cond_0
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "k":I
    .local v4, "k":I
    :try_start_1
    invoke-virtual {v3}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v2

    .line 404
    iget-object v2, v3, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    move v2, v4

    goto :goto_0

    .line 407
    .end local v0    # "size":I
    .end local v1    # "a":[Ljava/lang/Object;
    .end local v3    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .end local v4    # "k":I
    :catchall_0
    move-exception v0

    .line 408
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 409
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .param p1, "a"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 414
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 417
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 419
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 418
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    .line 421
    :cond_0
    const/4 v1, 0x0

    .line 422
    .local v1, "k":I
    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v2, v2, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    .local v2, "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TT;>;"
    :goto_0
    if-nez v2, :cond_2

    .line 424
    .end local v2    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TT;>;"
    array-length v2, p1

    if-le v2, v1, :cond_1

    .line 425
    const/4 v2, 0x0

    aput-object v2, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :cond_1
    nop

    .line 428
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 426
    return-object p1

    .line 423
    .restart local v2    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TT;>;"
    :cond_2
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "k":I
    .local v3, "k":I
    :try_start_1
    invoke-virtual {v2}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, v1

    .line 422
    iget-object v1, v2, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    move v1, v3

    goto :goto_0

    .line 427
    .end local v0    # "size":I
    .end local v2    # "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TT;>;"
    .end local v3    # "k":I
    :catchall_0
    move-exception v0

    .line 428
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    .line 429
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method unlink(Lcom/lidroid/xutils/task/Node;Lcom/lidroid/xutils/task/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;",
            "Lcom/lidroid/xutils/task/Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 359
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;, "Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue<TE;>;"
    .local p1, "p":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    .local p2, "trail":Lcom/lidroid/xutils/task/Node;, "Lcom/lidroid/xutils/task/Node<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/task/Node;->setValue(Ljava/lang/Object;)V

    .line 360
    iget-object v0, p1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    iput-object v0, p2, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    .line 361
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    if-ne v0, p1, :cond_0

    .line 362
    iput-object p2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    iget v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_1

    .line 364
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 365
    :cond_1
    return-void
.end method
