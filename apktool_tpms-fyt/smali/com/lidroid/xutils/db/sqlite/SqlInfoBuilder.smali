.class public Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;
.super Ljava/lang/Object;
.source "SqlInfoBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static buildCreateTableSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .locals 10
    .param p0, "db"    # Lcom/lidroid/xutils/DbUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/lidroid/xutils/db/sqlite/SqlInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 224
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v0

    .line 225
    .local v0, "table":Lcom/lidroid/xutils/db/table/Table;
    iget-object v1, v0, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    .line 227
    .local v1, "id":Lcom/lidroid/xutils/db/table/Id;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 228
    .local v2, "sqlBuffer":Ljava/lang/StringBuffer;
    const-string v3, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    iget-object v3, v0, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrement()Z

    move-result v3

    const-string v4, "\"  "

    const-string v5, "\""

    if-eqz v3, :cond_0

    .line 233
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Id;->getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, " PRIMARY KEY,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    :goto_0
    iget-object v3, v0, Lcom/lidroid/xutils/db/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 239
    .local v3, "columns":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/lidroid/xutils/db/table/Column;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 259
    const-string v4, " )"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    new-instance v4, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 239
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lidroid/xutils/db/table/Column;

    .line 240
    .local v7, "column":Lcom/lidroid/xutils/db/table/Column;
    instance-of v8, v7, Lcom/lidroid/xutils/db/table/Finder;

    if-eqz v8, :cond_2

    .line 241
    goto :goto_1

    .line 243
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Lcom/lidroid/xutils/db/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    invoke-virtual {v7}, Lcom/lidroid/xutils/db/table/Column;->getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 245
    invoke-virtual {v7}, Lcom/lidroid/xutils/db/table/Column;->getColumnField()Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-static {v8}, Lcom/lidroid/xutils/db/table/ColumnUtils;->isUnique(Ljava/lang/reflect/Field;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 246
    const-string v8, " UNIQUE"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    :cond_3
    invoke-virtual {v7}, Lcom/lidroid/xutils/db/table/Column;->getColumnField()Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-static {v8}, Lcom/lidroid/xutils/db/table/ColumnUtils;->isNotNull(Ljava/lang/reflect/Field;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 249
    const-string v8, " NOT NULL"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    :cond_4
    invoke-virtual {v7}, Lcom/lidroid/xutils/db/table/Column;->getColumnField()Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-static {v8}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getCheck(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v8

    .line 252
    .local v8, "check":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 253
    const-string v9, " CHECK("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, ")"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    :cond_5
    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static buildDeleteSqlByTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tableName"    # Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildDeleteSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .locals 4
    .param p0, "db"    # Lcom/lidroid/xutils/DbUtils;
    .param p2, "whereBuilder"    # Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/lidroid/xutils/db/sqlite/WhereBuilder;",
            ")",
            "Lcom/lidroid/xutils/db/sqlite/SqlInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 139
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v0

    .line 140
    .local v0, "table":Lcom/lidroid/xutils/db/table/Table;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-static {v2}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v2

    if-lez v2, :cond_0

    .line 143
    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_0
    new-instance v2, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public static buildDeleteSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .locals 6
    .param p0, "db"    # Lcom/lidroid/xutils/DbUtils;
    .param p2, "idValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/lidroid/xutils/db/sqlite/SqlInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 122
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>()V

    .line 124
    .local v0, "result":Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v1

    .line 125
    .local v1, "table":Lcom/lidroid/xutils/db/table/Table;
    iget-object v2, v1, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    .line 127
    .local v2, "id":Lcom/lidroid/xutils/db/table/Id;
    if-eqz p2, :cond_0

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-static {v4}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-static {v4, v5, p2}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 135
    return-object v0

    .line 128
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v3, Lcom/lidroid/xutils/exception/DbException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "this entity["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]\'s id value is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static buildDeleteSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .locals 8
    .param p0, "db"    # Lcom/lidroid/xutils/DbUtils;
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>()V

    .line 105
    .local v0, "result":Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 106
    .local v1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, v1}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v2

    .line 107
    .local v2, "table":Lcom/lidroid/xutils/db/table/Table;
    iget-object v3, v2, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    .line 108
    .local v3, "id":Lcom/lidroid/xutils/db/table/Id;
    invoke-virtual {v3, p1}, Lcom/lidroid/xutils/db/table/Id;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 110
    .local v4, "idValue":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-static {v6}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v6, " WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    invoke-static {v6, v7, v4}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 118
    return-object v0

    .line 111
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v5, Lcom/lidroid/xutils/exception/DbException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "this entity["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "]\'s id value is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static buildInsertSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .locals 6
    .param p0, "db"    # Lcom/lidroid/xutils/DbUtils;
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 36
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->entity2KeyValueList(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 37
    .local v0, "keyValueList":Ljava/util/List;, "Ljava/util/List<Lcom/lidroid/xutils/db/table/KeyValue;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 39
    :cond_0
    new-instance v1, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-direct {v1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>()V

    .line 40
    .local v1, "result":Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 42
    .local v2, "sqlBuffer":Ljava/lang/StringBuffer;
    const-string v3, "INSERT INTO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/lidroid/xutils/db/table/TableUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 50
    const-string v3, ") VALUES ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 53
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v4, :cond_1

    .line 56
    .end local v3    # "i":I
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 57
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 61
    return-object v1

    .line 54
    .restart local v3    # "i":I
    :cond_1
    const-string v5, "?,"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 45
    .end local v3    # "i":I
    .end local v4    # "length":I
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lidroid/xutils/db/table/KeyValue;

    .line 46
    .local v4, "kv":Lcom/lidroid/xutils/db/table/KeyValue;
    iget-object v5, v4, Lcom/lidroid/xutils/db/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    iget-object v5, v4, Lcom/lidroid/xutils/db/table/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->addBindArgWithoutConverter(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static buildReplaceSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .locals 6
    .param p0, "db"    # Lcom/lidroid/xutils/DbUtils;
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->entity2KeyValueList(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "keyValueList":Ljava/util/List;, "Ljava/util/List<Lcom/lidroid/xutils/db/table/KeyValue;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 71
    :cond_0
    new-instance v1, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-direct {v1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>()V

    .line 72
    .local v1, "result":Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v2, "sqlBuffer":Ljava/lang/StringBuffer;
    const-string v3, "REPLACE INTO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/lidroid/xutils/db/table/TableUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 82
    const-string v3, ") VALUES ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 85
    .local v4, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v4, :cond_1

    .line 88
    .end local v3    # "i":I
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 89
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 93
    return-object v1

    .line 86
    .restart local v3    # "i":I
    :cond_1
    const-string v5, "?,"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 77
    .end local v3    # "i":I
    .end local v4    # "length":I
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lidroid/xutils/db/table/KeyValue;

    .line 78
    .local v4, "kv":Lcom/lidroid/xutils/db/table/KeyValue;
    iget-object v5, v4, Lcom/lidroid/xutils/db/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    iget-object v5, v4, Lcom/lidroid/xutils/db/table/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->addBindArgWithoutConverter(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs buildUpdateSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;[Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .locals 9
    .param p0, "db"    # Lcom/lidroid/xutils/DbUtils;
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "whereBuilder"    # Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
    .param p3, "updateColumnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->entity2KeyValueList(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 191
    .local v0, "keyValueList":Ljava/util/List;, "Ljava/util/List<Lcom/lidroid/xutils/db/table/KeyValue;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 193
    :cond_0
    const/4 v1, 0x0

    .line 194
    .local v1, "updateColumnNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p3, :cond_1

    array-length v2, p3

    if-lez v2, :cond_1

    .line 195
    new-instance v2, Ljava/util/HashSet;

    array-length v3, p3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    move-object v1, v2

    .line 196
    invoke-static {v1, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 199
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 200
    .local v2, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lcom/lidroid/xutils/db/table/TableUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "tableName":Ljava/lang/String;
    new-instance v4, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-direct {v4}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>()V

    .line 203
    .local v4, "result":Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "UPDATE "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 204
    .local v5, "sqlBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const-string v6, " SET "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 212
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 213
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v6

    if-lez v6, :cond_3

    .line 214
    const-string v6, " WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 218
    return-object v4

    .line 206
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lidroid/xutils/db/table/KeyValue;

    .line 207
    .local v7, "kv":Lcom/lidroid/xutils/db/table/KeyValue;
    if-eqz v1, :cond_5

    iget-object v8, v7, Lcom/lidroid/xutils/db/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 208
    :cond_5
    iget-object v8, v7, Lcom/lidroid/xutils/db/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "=?,"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    iget-object v8, v7, Lcom/lidroid/xutils/db/table/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v4, v8}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->addBindArgWithoutConverter(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs buildUpdateSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;[Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .locals 11
    .param p0, "db"    # Lcom/lidroid/xutils/DbUtils;
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "updateColumnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 153
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->entity2KeyValueList(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, "keyValueList":Ljava/util/List;, "Ljava/util/List<Lcom/lidroid/xutils/db/table/KeyValue;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 156
    :cond_0
    const/4 v1, 0x0

    .line 157
    .local v1, "updateColumnNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    array-length v2, p2

    if-lez v2, :cond_1

    .line 158
    new-instance v2, Ljava/util/HashSet;

    array-length v3, p2

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    move-object v1, v2

    .line 159
    invoke-static {v1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 162
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 163
    .local v2, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, v2}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v3

    .line 164
    .local v3, "table":Lcom/lidroid/xutils/db/table/Table;
    iget-object v4, v3, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    .line 165
    .local v4, "id":Lcom/lidroid/xutils/db/table/Id;
    invoke-virtual {v4, p1}, Lcom/lidroid/xutils/db/table/Id;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 167
    .local v5, "idValue":Ljava/lang/Object;
    if-eqz v5, :cond_5

    .line 171
    new-instance v6, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-direct {v6}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>()V

    .line 172
    .local v6, "result":Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "UPDATE "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 173
    .local v7, "sqlBuffer":Ljava/lang/StringBuffer;
    iget-object v8, v3, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    const-string v8, " SET "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 181
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 182
    const-string v8, " WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "="

    invoke-static {v8, v9, v5}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 185
    return-object v6

    .line 175
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lidroid/xutils/db/table/KeyValue;

    .line 176
    .local v9, "kv":Lcom/lidroid/xutils/db/table/KeyValue;
    if-eqz v1, :cond_4

    iget-object v10, v9, Lcom/lidroid/xutils/db/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 177
    :cond_4
    iget-object v10, v9, Lcom/lidroid/xutils/db/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "=?,"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    iget-object v10, v9, Lcom/lidroid/xutils/db/table/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v6, v10}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->addBindArgWithoutConverter(Ljava/lang/Object;)V

    goto :goto_0

    .line 168
    .end local v6    # "result":Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .end local v7    # "sqlBuffer":Ljava/lang/StringBuffer;
    .end local v9    # "kv":Lcom/lidroid/xutils/db/table/KeyValue;
    :cond_5
    new-instance v6, Lcom/lidroid/xutils/exception/DbException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "this entity["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "]\'s id value is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v6

    :goto_2
    goto :goto_1
.end method

.method private static column2KeyValue(Ljava/lang/Object;Lcom/lidroid/xutils/db/table/Column;)Lcom/lidroid/xutils/db/table/KeyValue;
    .locals 4
    .param p0, "entity"    # Ljava/lang/Object;
    .param p1, "column"    # Lcom/lidroid/xutils/db/table/Column;

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "kv":Lcom/lidroid/xutils/db/table/KeyValue;
    invoke-virtual {p1}, Lcom/lidroid/xutils/db/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 267
    invoke-virtual {p1, p0}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 268
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/table/Column;->getDefaultValue()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    move-object v2, v3

    .line 269
    new-instance v3, Lcom/lidroid/xutils/db/table/KeyValue;

    invoke-direct {v3, v1, v2}, Lcom/lidroid/xutils/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v3

    .line 271
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    return-object v0
.end method

.method public static entity2KeyValueList(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .param p0, "db"    # Lcom/lidroid/xutils/DbUtils;
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/lidroid/xutils/db/table/KeyValue;",
            ">;"
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v0, "keyValueList":Ljava/util/List;, "Ljava/util/List<Lcom/lidroid/xutils/db/table/KeyValue;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 279
    .local v1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, v1}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v2

    .line 280
    .local v2, "table":Lcom/lidroid/xutils/db/table/Table;
    iget-object v3, v2, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    .line 282
    .local v3, "id":Lcom/lidroid/xutils/db/table/Id;
    invoke-virtual {v3}, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrement()Z

    move-result v4

    if-nez v4, :cond_0

    .line 283
    invoke-virtual {v3, p1}, Lcom/lidroid/xutils/db/table/Id;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 284
    .local v4, "idValue":Ljava/lang/Object;
    new-instance v5, Lcom/lidroid/xutils/db/table/KeyValue;

    invoke-virtual {v3}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/lidroid/xutils/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    .local v5, "kv":Lcom/lidroid/xutils/db/table/KeyValue;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v4    # "idValue":Ljava/lang/Object;
    .end local v5    # "kv":Lcom/lidroid/xutils/db/table/KeyValue;
    :cond_0
    iget-object v4, v2, Lcom/lidroid/xutils/db/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 289
    .local v4, "columns":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/lidroid/xutils/db/table/Column;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 299
    return-object v0

    .line 289
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lidroid/xutils/db/table/Column;

    .line 290
    .local v6, "column":Lcom/lidroid/xutils/db/table/Column;
    instance-of v7, v6, Lcom/lidroid/xutils/db/table/Finder;

    if-eqz v7, :cond_2

    .line 291
    goto :goto_0

    .line 293
    :cond_2
    invoke-static {p1, v6}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->column2KeyValue(Ljava/lang/Object;Lcom/lidroid/xutils/db/table/Column;)Lcom/lidroid/xutils/db/table/KeyValue;

    move-result-object v7

    .line 294
    .local v7, "kv":Lcom/lidroid/xutils/db/table/KeyValue;
    if-eqz v7, :cond_3

    .line 295
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    :cond_3
    goto :goto_0
.end method
