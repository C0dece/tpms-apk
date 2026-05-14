.class public Lcom/lidroid/xutils/db/sqlite/CursorUtils;
.super Ljava/lang/Object;
.source "CursorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;,
        Lcom/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDbModel(Landroid/database/Cursor;)Lcom/lidroid/xutils/db/table/DbModel;
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "result":Lcom/lidroid/xutils/db/table/DbModel;
    if-eqz p0, :cond_1

    .line 73
    new-instance v1, Lcom/lidroid/xutils/db/table/DbModel;

    invoke-direct {v1}, Lcom/lidroid/xutils/db/table/DbModel;-><init>()V

    .line 74
    .end local v0    # "result":Lcom/lidroid/xutils/db/table/DbModel;
    .local v1, "result":Lcom/lidroid/xutils/db/table/DbModel;
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    .line 75
    .local v2, "columnCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    move-object v0, v1

    goto :goto_1

    .line 76
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/lidroid/xutils/db/table/DbModel;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "result":Lcom/lidroid/xutils/db/table/DbModel;
    .end local v2    # "columnCount":I
    .local v0, "result":Lcom/lidroid/xutils/db/table/DbModel;
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static getEntity(Lcom/lidroid/xutils/DbUtils;Landroid/database/Cursor;Ljava/lang/Class;J)Ljava/lang/Object;
    .locals 11
    .param p0, "db"    # Lcom/lidroid/xutils/DbUtils;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p3, "findCacheSequence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class<",
            "TT;>;J)TT;"
        }
    .end annotation

    .line 29
    .local p2, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 31
    :cond_0
    invoke-static {p3, p4}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->setSeq(J)V

    .line 33
    :try_start_0
    invoke-static {p0, p2}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v1

    .line 34
    .local v1, "table":Lcom/lidroid/xutils/db/table/Table;
    iget-object v2, v1, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    .line 35
    .local v2, "id":Lcom/lidroid/xutils/db/table/Id;
    invoke-virtual {v2}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "idColumnName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/lidroid/xutils/db/table/Id;->getIndex()I

    move-result v4

    .line 37
    .local v4, "idIndex":I
    if-gez v4, :cond_1

    .line 38
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 40
    :cond_1
    invoke-virtual {v2}, Lcom/lidroid/xutils/db/table/Id;->getColumnConverter()Lcom/lidroid/xutils/db/converter/ColumnConverter;

    move-result-object v5

    invoke-interface {v5, p1, v4}, Lcom/lidroid/xutils/db/converter/ColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v5

    .line 41
    .local v5, "idValue":Ljava/lang/Object;
    invoke-static {p2, v5}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 42
    .local v6, "entity":Ljava/lang/Object;, "TT;"
    if-nez v6, :cond_5

    .line 43
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 44
    invoke-virtual {v2, v6, p1, v4}, Lcom/lidroid/xutils/db/table/Id;->setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V

    .line 45
    invoke-static {p2, v5, v6}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->put(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    nop

    .line 49
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v7

    .line 50
    .local v7, "columnCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-lt v8, v7, :cond_3

    .line 59
    .end local v8    # "i":I
    iget-object v8, v1, Lcom/lidroid/xutils/db/table/Table;->finderMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 62
    return-object v6

    .line 59
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lidroid/xutils/db/table/Finder;

    .line 60
    .local v9, "finder":Lcom/lidroid/xutils/db/table/Finder;
    const/4 v10, 0x0

    invoke-virtual {v9, v6, v0, v10}, Lcom/lidroid/xutils/db/table/Finder;->setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V

    goto :goto_1

    .line 51
    .end local v9    # "finder":Lcom/lidroid/xutils/db/table/Finder;
    .restart local v8    # "i":I
    :cond_3
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    .line 52
    .local v9, "columnName":Ljava/lang/String;
    iget-object v10, v1, Lcom/lidroid/xutils/db/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lidroid/xutils/db/table/Column;

    .line 53
    .local v10, "column":Lcom/lidroid/xutils/db/table/Column;
    if-eqz v10, :cond_4

    .line 54
    invoke-virtual {v10, v6, p1, v8}, Lcom/lidroid/xutils/db/table/Column;->setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .end local v9    # "columnName":Ljava/lang/String;
    .end local v10    # "column":Lcom/lidroid/xutils/db/table/Column;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 47
    .end local v7    # "columnCount":I
    .end local v8    # "i":I
    :cond_5
    return-object v6

    .line 63
    .end local v1    # "table":Lcom/lidroid/xutils/db/table/Table;
    .end local v2    # "id":Lcom/lidroid/xutils/db/table/Id;
    .end local v3    # "idColumnName":Ljava/lang/String;
    .end local v4    # "idIndex":I
    .end local v5    # "idValue":Ljava/lang/Object;
    .end local v6    # "entity":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .end local v1    # "e":Ljava/lang/Throwable;
    return-object v0

    .line 29
    :cond_6
    :goto_2
    return-object v0
.end method
