.class public Lcom/lidroid/xutils/db/table/Foreign;
.super Lcom/lidroid/xutils/db/table/Column;
.source "Foreign.java"


# instance fields
.field private final foreignColumnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

.field private final foreignColumnName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 2
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 35
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/db/table/Column;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 37
    invoke-static {p2}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getForeignColumnNameByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/lidroid/xutils/db/table/Foreign;->getForeignEntityType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/lidroid/xutils/db/table/Column;

    move-result-object v0

    iget-object v0, v0, Lcom/lidroid/xutils/db/table/Column;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 38
    nop

    .line 40
    .local v0, "foreignColumnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->getColumnConverter(Ljava/lang/Class;)Lcom/lidroid/xutils/db/converter/ColumnConverter;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

    .line 41
    return-void
.end method


# virtual methods
.method public getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

    invoke-interface {v0}, Lcom/lidroid/xutils/db/converter/ColumnConverter;->getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    move-result-object v0

    return-object v0
.end method

.method public getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "entity"    # Ljava/lang/Object;

    .line 94
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/db/table/Foreign;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "fieldValue":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 97
    .local v1, "columnValue":Ljava/lang/Object;
    if-eqz v0, :cond_6

    .line 98
    iget-object v2, p0, Lcom/lidroid/xutils/db/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 99
    .local v2, "columnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    move-object v3, v0

    check-cast v3, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-virtual {v3}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->getColumnValue()Ljava/lang/Object;

    move-result-object v1

    .line 101
    goto/16 :goto_2

    :cond_0
    const-class v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 103
    :try_start_0
    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 104
    .local v3, "foreignEntities":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 106
    invoke-static {p0}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getForeignEntityType(Lcom/lidroid/xutils/db/table/Foreign;)Ljava/lang/Class;

    move-result-object v4

    .line 107
    .local v4, "foreignEntityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/lidroid/xutils/db/table/Column;

    move-result-object v5

    .line 108
    .local v5, "column":Lcom/lidroid/xutils/db/table/Column;
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    .line 111
    invoke-virtual {p0}, Lcom/lidroid/xutils/db/table/Foreign;->getTable()Lcom/lidroid/xutils/db/table/Table;

    move-result-object v7

    .line 112
    .local v7, "table":Lcom/lidroid/xutils/db/table/Table;
    if-eqz v7, :cond_3

    instance-of v8, v5, Lcom/lidroid/xutils/db/table/Id;

    if-eqz v8, :cond_3

    .line 113
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 114
    .local v9, "foreignObj":Ljava/lang/Object;
    invoke-virtual {v5, v9}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 115
    .local v10, "idValue":Ljava/lang/Object;
    if-nez v10, :cond_1

    .line 116
    iget-object v11, v7, Lcom/lidroid/xutils/db/table/Table;->db:Lcom/lidroid/xutils/DbUtils;

    invoke-virtual {v11, v9}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdate(Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    .end local v9    # "foreignObj":Ljava/lang/Object;
    .end local v10    # "idValue":Ljava/lang/Object;
    :cond_3
    :goto_1
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v6

    .line 123
    .end local v3    # "foreignEntities":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v4    # "foreignEntityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "column":Lcom/lidroid/xutils/db/table/Column;
    .end local v7    # "table":Lcom/lidroid/xutils/db/table/Table;
    goto :goto_2

    :catchall_0
    move-exception v3

    .line 124
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .end local v3    # "e":Ljava/lang/Throwable;
    goto :goto_2

    .line 128
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/lidroid/xutils/db/table/Column;

    move-result-object v3

    .line 129
    .local v3, "column":Lcom/lidroid/xutils/db/table/Column;
    invoke-virtual {v3, v0}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 131
    invoke-virtual {p0}, Lcom/lidroid/xutils/db/table/Foreign;->getTable()Lcom/lidroid/xutils/db/table/Table;

    move-result-object v4

    .line 132
    .local v4, "table":Lcom/lidroid/xutils/db/table/Table;
    if-eqz v4, :cond_5

    if-nez v1, :cond_5

    instance-of v5, v3, Lcom/lidroid/xutils/db/table/Id;

    if-eqz v5, :cond_5

    .line 133
    iget-object v5, v4, Lcom/lidroid/xutils/db/table/Table;->db:Lcom/lidroid/xutils/DbUtils;

    invoke-virtual {v5, v0}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdate(Ljava/lang/Object;)V

    .line 136
    :cond_5
    invoke-virtual {v3, v0}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v5

    .line 137
    .end local v3    # "column":Lcom/lidroid/xutils/db/table/Column;
    .end local v4    # "table":Lcom/lidroid/xutils/db/table/Table;
    goto :goto_2

    :catchall_1
    move-exception v3

    .line 138
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .end local v2    # "columnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_6
    :goto_2
    return-object v1
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1

    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForeignColumnName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getForeignEntityType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getForeignEntityType(Lcom/lidroid/xutils/db/table/Foreign;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V
    .locals 6
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "index"    # I

    .line 54
    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

    invoke-interface {v0, p2, p3}, Lcom/lidroid/xutils/db/converter/ColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "fieldValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    const/4 v1, 0x0

    .line 58
    .local v1, "value":Ljava/lang/Object;
    iget-object v2, p0, Lcom/lidroid/xutils/db/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 59
    .local v2, "columnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    new-instance v3, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-direct {v3, p0, v0}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Foreign;Ljava/lang/Object;)V

    move-object v1, v3

    .line 61
    goto :goto_0

    :cond_1
    const-class v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    :try_start_0
    new-instance v3, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-direct {v3, p0, v0}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Foreign;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->getAllFromDb()Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 64
    goto :goto_0

    :catch_0
    move-exception v3

    .line 65
    .local v3, "e":Lcom/lidroid/xutils/exception/DbException;
    invoke-virtual {v3}, Lcom/lidroid/xutils/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .end local v3    # "e":Lcom/lidroid/xutils/exception/DbException;
    goto :goto_0

    .line 69
    :cond_2
    :try_start_1
    new-instance v3, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-direct {v3, p0, v0}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Foreign;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->getFirstFromDb()Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    .line 70
    goto :goto_0

    :catch_1
    move-exception v3

    .line 71
    .restart local v3    # "e":Lcom/lidroid/xutils/exception/DbException;
    invoke-virtual {v3}, Lcom/lidroid/xutils/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .end local v3    # "e":Lcom/lidroid/xutils/exception/DbException;
    :goto_0
    iget-object v3, p0, Lcom/lidroid/xutils/db/table/Foreign;->setMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 77
    :try_start_2
    iget-object v3, p0, Lcom/lidroid/xutils/db/table/Foreign;->setMethod:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    goto :goto_1

    :catchall_0
    move-exception v3

    .line 79
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .end local v3    # "e":Ljava/lang/Throwable;
    goto :goto_1

    .line 83
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/lidroid/xutils/db/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    iget-object v3, p0, Lcom/lidroid/xutils/db/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    goto :goto_1

    :catchall_1
    move-exception v3

    .line 86
    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
