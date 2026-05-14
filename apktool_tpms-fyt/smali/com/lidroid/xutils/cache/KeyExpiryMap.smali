.class public Lcom/lidroid/xutils/cache/KeyExpiryMap;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "KeyExpiryMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "TK;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    .local p0, "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .line 43
    .local p0, "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 44
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 39
    .local p0, "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 40
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 0
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    .line 35
    .local p0, "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 36
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .local p0, "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    monitor-enter p0

    .line 86
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 85
    .end local p0    # "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;

    .local p0, "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    monitor-enter p0

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "result":Z
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 71
    .local v1, "expiryTimestamp":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 73
    goto :goto_0

    .line 74
    .end local p0    # "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->remove(Ljava/lang/Object;)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    monitor-exit p0

    return v0

    .line 68
    .end local v0    # "result":Z
    .end local v1    # "expiryTimestamp":Ljava/lang/Long;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .local p0, "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    monitor-enter p0

    .line 52
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 55
    .end local p0    # "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 51
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->get(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1
    .param p2, "expiryTimestamp"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .local p0, "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    .line 61
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->remove(Ljava/lang/Object;)Ljava/lang/Long;

    .line 64
    .end local p0    # "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 60
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "expiryTimestamp":Ljava/lang/Long;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->put(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .local p0, "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    monitor-enter p0

    .line 81
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/lidroid/xutils/cache/KeyExpiryMap;, "Lcom/lidroid/xutils/cache/KeyExpiryMap<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/KeyExpiryMap;->remove(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
