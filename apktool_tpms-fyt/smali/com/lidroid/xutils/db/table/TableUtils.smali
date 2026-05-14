.class public Lcom/lidroid/xutils/db/table/TableUtils;
.super Ljava/lang/Object;
.source "TableUtils.java"


# static fields
.field private static entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Column;",
            ">;>;"
        }
    .end annotation
.end field

.field private static entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Id;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/db/table/TableUtils;->entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 117
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/db/table/TableUtils;->entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private static addColumns2Map(Ljava/lang/Class;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "primaryKeyFieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Column;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "columnMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lidroid/xutils/db/table/Column;>;"
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 74
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    .line 98
    const-class v1, Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 99
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/lidroid/xutils/db/table/TableUtils;->addColumns2Map(Ljava/lang/Class;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 101
    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    goto/16 :goto_2

    .line 74
    .restart local v0    # "fields":[Ljava/lang/reflect/Field;
    :cond_1
    aget-object v3, v0, v2

    .line 75
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-static {v3}, Lcom/lidroid/xutils/db/table/ColumnUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->isSupportColumnConverter(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 79
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 80
    new-instance v4, Lcom/lidroid/xutils/db/table/Column;

    invoke-direct {v4, p0, v3}, Lcom/lidroid/xutils/db/table/Column;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 81
    .local v4, "column":Lcom/lidroid/xutils/db/table/Column;
    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 82
    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    nop

    .end local v4    # "column":Lcom/lidroid/xutils/db/table/Column;
    goto :goto_1

    :cond_3
    invoke-static {v3}, Lcom/lidroid/xutils/db/table/ColumnUtils;->isForeign(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 86
    new-instance v4, Lcom/lidroid/xutils/db/table/Foreign;

    invoke-direct {v4, p0, v3}, Lcom/lidroid/xutils/db/table/Foreign;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 87
    .local v4, "column":Lcom/lidroid/xutils/db/table/Foreign;
    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Foreign;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 88
    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Foreign;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    nop

    .end local v4    # "column":Lcom/lidroid/xutils/db/table/Foreign;
    goto :goto_1

    :cond_4
    invoke-static {v3}, Lcom/lidroid/xutils/db/table/ColumnUtils;->isFinder(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 91
    new-instance v4, Lcom/lidroid/xutils/db/table/Finder;

    invoke-direct {v4, p0, v3}, Lcom/lidroid/xutils/db/table/Finder;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 92
    .local v4, "column":Lcom/lidroid/xutils/db/table/Finder;
    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Finder;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 93
    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Finder;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "column":Lcom/lidroid/xutils/db/table/Finder;
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 101
    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    :catchall_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_6
    :goto_2
    return-void
.end method

.method static declared-synchronized getColumnMap(Ljava/lang/Class;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Column;",
            ">;"
        }
    .end annotation

    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/lidroid/xutils/db/table/TableUtils;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/lidroid/xutils/db/table/TableUtils;->entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lcom/lidroid/xutils/db/table/TableUtils;->entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 62
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v1, "columnMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lidroid/xutils/db/table/Column;>;"
    invoke-static {p0}, Lcom/lidroid/xutils/db/table/TableUtils;->getPrimaryKeyFieldName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "primaryKeyFieldName":Ljava/lang/String;
    invoke-static {p0, v2, v1}, Lcom/lidroid/xutils/db/table/TableUtils;->addColumns2Map(Ljava/lang/Class;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 65
    sget-object v3, Lcom/lidroid/xutils/db/table/TableUtils;->entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    monitor-exit v0

    return-object v1

    .line 57
    .end local v1    # "columnMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/lidroid/xutils/db/table/Column;>;"
    .end local v2    # "primaryKeyFieldName":Ljava/lang/String;
    .end local p0    # "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/lidroid/xutils/db/table/Column;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lidroid/xutils/db/table/Column;"
        }
    .end annotation

    .line 108
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/lidroid/xutils/db/table/TableUtils;->getPrimaryKeyColumnName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {p0}, Lcom/lidroid/xutils/db/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Id;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    invoke-static {p0}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnMap(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/table/Column;

    return-object v0
.end method

.method public static getExecAfterTableCreated(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 43
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/lidroid/xutils/db/annotation/Table;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/annotation/Table;

    .line 44
    .local v0, "table":Lcom/lidroid/xutils/db/annotation/Table;
    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0}, Lcom/lidroid/xutils/db/annotation/Table;->execAfterTableCreated()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 47
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static declared-synchronized getId(Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Id;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/lidroid/xutils/db/table/Id;"
        }
    .end annotation

    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/lidroid/xutils/db/table/TableUtils;

    monitor-enter v0

    .line 121
    :try_start_0
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 125
    sget-object v1, Lcom/lidroid/xutils/db/table/TableUtils;->entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    sget-object v1, Lcom/lidroid/xutils/db/table/TableUtils;->entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/db/table/Id;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 129
    :cond_0
    const/4 v1, 0x0

    .line 130
    .local v1, "primaryKeyField":Ljava/lang/reflect/Field;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 131
    .local v2, "fields":[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_6

    .line 133
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v6, v2, v5

    .line 134
    .local v6, "field":Ljava/lang/reflect/Field;
    const-class v7, Lcom/lidroid/xutils/db/annotation/Id;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 135
    move-object v1, v6

    .line 136
    nop

    .line 140
    .end local v6    # "field":Ljava/lang/reflect/Field;
    :goto_1
    if-nez v1, :cond_6

    .line 141
    array-length v3, v2

    :goto_2
    if-lt v4, v3, :cond_2

    goto :goto_4

    :cond_2
    aget-object v5, v2, v4

    .line 142
    .local v5, "field":Ljava/lang/reflect/Field;
    const-string v6, "id"

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "_id"

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    .line 141
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 143
    .restart local v5    # "field":Ljava/lang/reflect/Field;
    :cond_4
    :goto_3
    move-object v1, v5

    .line 144
    goto :goto_4

    .line 133
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 150
    :cond_6
    :goto_4
    if-nez v1, :cond_7

    .line 151
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/lidroid/xutils/db/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Id;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v3

    .line 154
    :cond_7
    :try_start_2
    new-instance v3, Lcom/lidroid/xutils/db/table/Id;

    invoke-direct {v3, p0, v1}, Lcom/lidroid/xutils/db/table/Id;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 155
    .local v3, "id":Lcom/lidroid/xutils/db/table/Id;
    sget-object v4, Lcom/lidroid/xutils/db/table/TableUtils;->entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    monitor-exit v0

    return-object v3

    .line 122
    .end local v1    # "primaryKeyField":Ljava/lang/reflect/Field;
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v3    # "id":Lcom/lidroid/xutils/db/table/Id;
    :cond_8
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "field \'id\' not found"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    .end local p0    # "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method private static getPrimaryKeyColumnName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 165
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/lidroid/xutils/db/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Id;

    move-result-object v0

    .line 166
    .local v0, "id":Lcom/lidroid/xutils/db/table/Id;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static getPrimaryKeyFieldName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 160
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/lidroid/xutils/db/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Id;

    move-result-object v0

    .line 161
    .local v0, "id":Lcom/lidroid/xutils/db/table/Id;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/lidroid/xutils/db/table/Id;->getColumnField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 35
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/lidroid/xutils/db/annotation/Table;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/annotation/Table;

    .line 36
    .local v0, "table":Lcom/lidroid/xutils/db/annotation/Table;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/lidroid/xutils/db/annotation/Table;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {v0}, Lcom/lidroid/xutils/db/annotation/Table;->name()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
