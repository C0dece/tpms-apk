.class public Lcom/lidroid/xutils/util/DoubleKeyValueMap;
.super Ljava/lang/Object;
.source "DoubleKeyValueMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K1:",
        "Ljava/lang/Object;",
        "K2:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK1;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK2;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    .local p0, "this":Lcom/lidroid/xutils/util/DoubleKeyValueMap;, "Lcom/lidroid/xutils/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 121
    .local p0, "this":Lcom/lidroid/xutils/util/DoubleKeyValueMap;, "Lcom/lidroid/xutils/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_1

    .line 122
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 123
    .local v1, "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0

    .line 127
    .end local v1    # "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    :cond_1
    :goto_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)Z"
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/lidroid/xutils/util/DoubleKeyValueMap;, "Lcom/lidroid/xutils/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    iget-object v0, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;)Z"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/lidroid/xutils/util/DoubleKeyValueMap;, "Lcom/lidroid/xutils/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    .local p2, "key2":Ljava/lang/Object;, "TK2;"
    iget-object v0, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;)TV;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/lidroid/xutils/util/DoubleKeyValueMap;, "Lcom/lidroid/xutils/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    .local p2, "key2":Ljava/lang/Object;, "TK2;"
    iget-object v0, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    .local v0, "k2_v":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK2;TV;>;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/lidroid/xutils/util/DoubleKeyValueMap;, "Lcom/lidroid/xutils/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    iget-object v0, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getAllValues()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/lidroid/xutils/util/DoubleKeyValueMap;, "Lcom/lidroid/xutils/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    const/4 v0, 0x0

    .line 75
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    iget-object v1, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 76
    .local v1, "k1Set":Ljava/util/Set;, "Ljava/util/Set<TK1;>;"
    if-eqz v1, :cond_2

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .end local v0    # "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .local v2, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    .line 79
    .local v0, "k1":Ljava/lang/Object;, "TK1;"
    iget-object v4, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 80
    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v4, :cond_0

    .line 81
    invoke-interface {v2, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 85
    .end local v2    # "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .end local v4    # "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_2
    :goto_1
    return-object v0
.end method

.method public getAllValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/lidroid/xutils/util/DoubleKeyValueMap;, "Lcom/lidroid/xutils/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    iget-object v0, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    .local v0, "k2_v":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getFirstKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK1;>;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/lidroid/xutils/util/DoubleKeyValueMap;, "Lcom/lidroid/xutils/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;TV;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/lidroid/xutils/util/DoubleKeyValueMap;, "Lcom/lidroid/xutils/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    .local p2, "key2":Ljava/lang/Object;, "TK2;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    .local v0, "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v0, v1

    .line 45
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .end local v0    # "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    goto :goto_0

    .line 49
    :cond_2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 50
    .restart local v0    # "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v0    # "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    :goto_0
    return-void

    .line 38
    :cond_3
    :goto_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;)V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/lidroid/xutils/util/DoubleKeyValueMap;, "Lcom/lidroid/xutils/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    iget-object v0, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TK2;)V"
        }
    .end annotation

    .line 114
    .local p0, "this":Lcom/lidroid/xutils/util/DoubleKeyValueMap;, "Lcom/lidroid/xutils/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK1;"
    .local p2, "key2":Ljava/lang/Object;, "TK2;"
    iget-object v0, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 115
    .local v0, "k2_v":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    return-void
.end method

.method public size()I
    .locals 4

    .line 100
    .local p0, "this":Lcom/lidroid/xutils/util/DoubleKeyValueMap;, "Lcom/lidroid/xutils/util/DoubleKeyValueMap<TK1;TK2;TV;>;"
    iget-object v0, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 103
    .local v0, "result":I
    iget-object v1, p0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->k1_k2V_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    return v0

    .line 103
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    .local v2, "k2V_map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK2;TV;>;"
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0
.end method
