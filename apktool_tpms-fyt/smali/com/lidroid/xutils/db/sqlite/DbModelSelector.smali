.class public Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
.super Ljava/lang/Object;
.source "DbModelSelector.java"


# instance fields
.field private columnExpressions:[Ljava/lang/String;

.field private groupByColumnName:Ljava/lang/String;

.field private having:Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

.field private selector:Lcom/lidroid/xutils/db/sqlite/Selector;


# direct methods
.method protected constructor <init>(Lcom/lidroid/xutils/db/sqlite/Selector;Ljava/lang/String;)V
    .locals 0
    .param p1, "selector"    # Lcom/lidroid/xutils/db/sqlite/Selector;
    .param p2, "groupByColumnName"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    .line 39
    iput-object p2, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method protected constructor <init>(Lcom/lidroid/xutils/db/sqlite/Selector;[Ljava/lang/String;)V
    .locals 0
    .param p1, "selector"    # Lcom/lidroid/xutils/db/sqlite/Selector;
    .param p2, "columnExpressions"    # [Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    .line 44
    iput-object p2, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    .line 45
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 33
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    .line 35
    return-void
.end method

.method public static from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/lidroid/xutils/db/sqlite/DbModelSelector;"
        }
    .end annotation

    .line 48
    .local p0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public and(Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .locals 1
    .param p1, "where"    # Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    .line 67
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->and(Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)Lcom/lidroid/xutils/db/sqlite/Selector;

    .line 68
    return-object p0
.end method

.method public and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lidroid/xutils/db/sqlite/Selector;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    .line 63
    return-object p0
.end method

.method public expr(Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .locals 1
    .param p1, "expr"    # Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->expr(Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/Selector;

    .line 83
    return-object p0
.end method

.method public expr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lidroid/xutils/db/sqlite/Selector;->expr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    .line 88
    return-object p0
.end method

.method public getEntityType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/sqlite/Selector;->getEntityType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public groupBy(Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .locals 0
    .param p1, "columnName"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public having(Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .locals 0
    .param p1, "whereBuilder"    # Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    .line 97
    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->having:Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    .line 98
    return-object p0
.end method

.method public limit(I)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .locals 1
    .param p1, "limit"    # I

    .line 117
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->limit(I)Lcom/lidroid/xutils/db/sqlite/Selector;

    .line 118
    return-object p0
.end method

.method public offset(I)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .locals 1
    .param p1, "offset"    # I

    .line 122
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->offset(I)Lcom/lidroid/xutils/db/sqlite/Selector;

    .line 123
    return-object p0
.end method

.method public or(Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .locals 1
    .param p1, "where"    # Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    .line 77
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->or(Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)Lcom/lidroid/xutils/db/sqlite/Selector;

    .line 78
    return-object p0
.end method

.method public or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lidroid/xutils/db/sqlite/Selector;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    .line 73
    return-object p0
.end method

.method public orderBy(Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->orderBy(Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/Selector;

    .line 108
    return-object p0
.end method

.method public orderBy(Ljava/lang/String;Z)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "desc"    # Z

    .line 112
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1, p2}, Lcom/lidroid/xutils/db/sqlite/Selector;->orderBy(Ljava/lang/String;Z)Lcom/lidroid/xutils/db/sqlite/Selector;

    .line 113
    return-object p0
.end method

.method public varargs select([Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .locals 0
    .param p1, "columnExpressions"    # [Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    .local v0, "result":Ljava/lang/StringBuffer;
    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 135
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 139
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 140
    goto :goto_1

    .line 136
    .restart local v1    # "i":I
    :cond_0
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    goto :goto_1

    .line 144
    :cond_2
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    :goto_1
    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget-object v1, v1, Lcom/lidroid/xutils/db/sqlite/Selector;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget-object v1, v1, Lcom/lidroid/xutils/db/sqlite/Selector;->whereBuilder:Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget-object v1, v1, Lcom/lidroid/xutils/db/sqlite/Selector;->whereBuilder:Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v1

    if-lez v1, :cond_3

    .line 149
    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget-object v1, v1, Lcom/lidroid/xutils/db/sqlite/Selector;->whereBuilder:Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    :cond_3
    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 152
    const-string v1, " GROUP BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->having:Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v1

    if-lez v1, :cond_4

    .line 154
    const-string v1, " HAVING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->having:Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    :cond_4
    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget-object v1, v1, Lcom/lidroid/xutils/db/sqlite/Selector;->orderByList:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 158
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget-object v2, v2, Lcom/lidroid/xutils/db/sqlite/Selector;->orderByList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_5

    goto :goto_3

    .line 159
    :cond_5
    const-string v2, " ORDER BY "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget-object v2, v2, Lcom/lidroid/xutils/db/sqlite/Selector;->orderByList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;

    invoke-virtual {v2}, Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 162
    .end local v1    # "i":I
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget v1, v1, Lcom/lidroid/xutils/db/sqlite/Selector;->limit:I

    if-lez v1, :cond_7

    .line 163
    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget v1, v1, Lcom/lidroid/xutils/db/sqlite/Selector;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 164
    const-string v1, " OFFSET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget v1, v1, Lcom/lidroid/xutils/db/sqlite/Selector;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 166
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public where(Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .locals 1
    .param p1, "whereBuilder"    # Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    .line 52
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)Lcom/lidroid/xutils/db/sqlite/Selector;

    .line 53
    return-object p0
.end method

.method public where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    .line 58
    return-object p0
.end method
