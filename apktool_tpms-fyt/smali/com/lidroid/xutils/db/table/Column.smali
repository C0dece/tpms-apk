.class public Lcom/lidroid/xutils/db/table/Column;
.super Ljava/lang/Object;
.source "Column.java"


# instance fields
.field protected final columnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

.field protected final columnField:Ljava/lang/reflect/Field;

.field protected final columnName:Ljava/lang/String;

.field private final defaultValue:Ljava/lang/Object;

.field protected final getMethod:Ljava/lang/reflect/Method;

.field private index:I

.field protected final setMethod:Ljava/lang/reflect/Method;

.field private table:Lcom/lidroid/xutils/db/table/Table;


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

    .line 42
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/lidroid/xutils/db/table/Column;->index:I

    .line 43
    iput-object p2, p0, Lcom/lidroid/xutils/db/table/Column;->columnField:Ljava/lang/reflect/Field;

    .line 44
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->getColumnConverter(Ljava/lang/Class;)Lcom/lidroid/xutils/db/converter/ColumnConverter;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/db/table/Column;->columnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

    .line 45
    invoke-static {p2}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getColumnNameByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/db/table/Column;->columnName:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Column;->columnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p2}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getColumnDefaultValue(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lidroid/xutils/db/converter/ColumnConverter;->getFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/db/table/Column;->defaultValue:Ljava/lang/Object;

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/xutils/db/table/Column;->defaultValue:Ljava/lang/Object;

    .line 51
    :goto_0
    invoke-static {p1, p2}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getColumnGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/db/table/Column;->getMethod:Ljava/lang/reflect/Method;

    .line 52
    invoke-static {p1, p2}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getColumnSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/db/table/Column;->setMethod:Ljava/lang/reflect/Method;

    .line 53
    return-void
.end method


# virtual methods
.method public getColumnConverter()Lcom/lidroid/xutils/db/converter/ColumnConverter;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Column;->columnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

    return-object v0
.end method

.method public getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Column;->columnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

    invoke-interface {v0}, Lcom/lidroid/xutils/db/converter/ColumnConverter;->getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    move-result-object v0

    return-object v0
.end method

.method public getColumnField()Ljava/lang/reflect/Field;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Column;->columnField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getColumnName()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Column;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "entity"    # Ljava/lang/Object;

    .line 79
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/db/table/Column;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    .local v0, "fieldValue":Ljava/lang/Object;
    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Column;->columnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

    invoke-interface {v1, v0}, Lcom/lidroid/xutils/db/converter/ColumnConverter;->fieldValue2ColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Column;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "entity"    # Ljava/lang/Object;

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "fieldValue":Ljava/lang/Object;
    if-eqz p1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Column;->getMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 88
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 89
    goto :goto_0

    :catchall_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 94
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Column;->columnField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 95
    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Column;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 96
    goto :goto_0

    :catchall_1
    move-exception v1

    .line 97
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/lidroid/xutils/db/table/Column;->index:I

    return v0
.end method

.method public getTable()Lcom/lidroid/xutils/db/table/Table;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Column;->table:Lcom/lidroid/xutils/db/table/Table;

    return-object v0
.end method

.method setTable(Lcom/lidroid/xutils/db/table/Table;)V
    .locals 0
    .param p1, "table"    # Lcom/lidroid/xutils/db/table/Table;

    .line 109
    iput-object p1, p0, Lcom/lidroid/xutils/db/table/Column;->table:Lcom/lidroid/xutils/db/table/Table;

    .line 110
    return-void
.end method

.method public setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V
    .locals 5
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "index"    # I

    .line 57
    iput p3, p0, Lcom/lidroid/xutils/db/table/Column;->index:I

    .line 58
    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Column;->columnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

    invoke-interface {v0, p2, p3}, Lcom/lidroid/xutils/db/converter/ColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v0

    .line 59
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Column;->defaultValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Column;->setMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 63
    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/lidroid/xutils/db/table/Column;->defaultValue:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v4, v0

    :goto_0
    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    goto :goto_2

    :catchall_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_2

    .line 69
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Column;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 70
    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Column;->columnField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/lidroid/xutils/db/table/Column;->defaultValue:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    goto :goto_2

    :catchall_1
    move-exception v1

    .line 72
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method
