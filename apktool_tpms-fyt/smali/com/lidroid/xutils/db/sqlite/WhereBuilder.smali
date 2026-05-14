.class public Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
.super Ljava/lang/Object;
.source "WhereBuilder.java"


# instance fields
.field private final whereItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    .line 38
    return-void
.end method

.method private appendCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 17
    .param p1, "conj"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "op"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/Object;

    .line 116
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v3, "sqlSb":Ljava/lang/StringBuilder;
    iget-object v4, v0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, " "

    if-lez v4, :cond_0

    .line 119
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_1
    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v6, "!="

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 132
    const-string v1, "<>"

    .line 133
    .end local p3    # "op":Ljava/lang/String;
    .local v1, "op":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "op":Ljava/lang/String;
    .restart local p3    # "op":Ljava/lang/String;
    :cond_2
    const-string v6, "=="

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 134
    const-string v1, "="

    .line 138
    .end local p3    # "op":Ljava/lang/String;
    .restart local v1    # "op":Ljava/lang/String;
    :cond_3
    :goto_0
    if-nez v2, :cond_6

    .line 139
    const-string v6, "="

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 140
    const-string v5, " IS NULL"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    move-object/from16 v16, v1

    goto/16 :goto_9

    :cond_4
    const-string v6, "<>"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 142
    const-string v5, " IS NOT NULL"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    move-object/from16 v16, v1

    goto/16 :goto_9

    .line 144
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " NULL"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    move-object/from16 v16, v1

    goto/16 :goto_9

    .line 147
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v5, "IN"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "value must be an Array or an Iterable."

    const-string v7, "\'\'"

    const/4 v8, -0x1

    const/16 v9, 0x27

    const-string v10, "\'"

    if-eqz v5, :cond_e

    .line 150
    const/4 v5, 0x0

    .line 151
    .local v5, "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    instance-of v11, v2, Ljava/lang/Iterable;

    if-eqz v11, :cond_7

    .line 152
    move-object v5, v2

    check-cast v5, Ljava/lang/Iterable;

    goto :goto_2

    .line 153
    :cond_7
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->isArray()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 154
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v11, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v12

    .line 156
    .local v12, "len":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-lt v13, v12, :cond_8

    .line 159
    .end local v13    # "i":I
    move-object v5, v11

    goto :goto_3

    .line 157
    .restart local v13    # "i":I
    :cond_8
    invoke-static {v2, v13}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 153
    .end local v11    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v12    # "len":I
    .end local v13    # "i":I
    :cond_9
    :goto_2
    nop

    .line 161
    :goto_3
    if-eqz v5, :cond_d

    .line 162
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v11, "("

    invoke-direct {v6, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v11, v6

    .line 163
    .local v11, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_a

    .line 176
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 177
    const-string v6, ")"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .end local v11    # "stringBuffer":Ljava/lang/StringBuffer;
    move-object/from16 v16, v1

    goto/16 :goto_9

    .line 163
    .restart local v11    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 164
    .local v6, "item":Ljava/lang/Object;
    invoke-static {v6}, Lcom/lidroid/xutils/db/table/ColumnUtils;->convert2DbColumnValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 165
    .local v13, "itemColValue":Ljava/lang/Object;
    sget-object v14, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->TEXT:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15}, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->getDbColumnType(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 166
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 167
    .local v14, "valueStr":Ljava/lang/String;
    invoke-virtual {v14, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-eq v15, v8, :cond_b

    .line 168
    invoke-virtual {v14, v10, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 170
    :cond_b
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    .end local v14    # "valueStr":Ljava/lang/String;
    goto :goto_5

    .line 172
    :cond_c
    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 174
    :goto_5
    const-string v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 180
    .end local v6    # "item":Ljava/lang/Object;
    .end local v11    # "stringBuffer":Ljava/lang/StringBuffer;
    .end local v13    # "itemColValue":Ljava/lang/Object;
    :cond_d
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 182
    .end local v5    # "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    :cond_e
    const-string v5, "BETWEEN"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 183
    const/4 v5, 0x0

    .line 184
    .restart local v5    # "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    instance-of v11, v2, Ljava/lang/Iterable;

    if-eqz v11, :cond_f

    .line 185
    move-object v5, v2

    check-cast v5, Ljava/lang/Iterable;

    goto :goto_7

    .line 186
    :cond_f
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->isArray()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 187
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v11, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v12

    .line 189
    .restart local v12    # "len":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    if-lt v13, v12, :cond_10

    .line 192
    .end local v13    # "i":I
    move-object v5, v11

    goto :goto_8

    .line 190
    .restart local v13    # "i":I
    :cond_10
    invoke-static {v2, v13}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 186
    .end local v11    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v12    # "len":I
    .end local v13    # "i":I
    :cond_11
    :goto_7
    nop

    .line 194
    :goto_8
    if-eqz v5, :cond_17

    .line 195
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 196
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v12, "value must have tow items."

    if-eqz v11, :cond_16

    .line 197
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 198
    .local v11, "start":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 199
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 201
    .local v12, "end":Ljava/lang/Object;
    invoke-static {v11}, Lcom/lidroid/xutils/db/table/ColumnUtils;->convert2DbColumnValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 202
    .local v13, "startColValue":Ljava/lang/Object;
    invoke-static {v12}, Lcom/lidroid/xutils/db/table/ColumnUtils;->convert2DbColumnValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 204
    .local v14, "endColValue":Ljava/lang/Object;
    sget-object v15, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->TEXT:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->getDbColumnType(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v15, " AND "

    if-eqz v8, :cond_14

    .line 205
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 206
    .local v8, "startStr":Ljava/lang/String;
    move-object/from16 v16, v1

    .end local v1    # "op":Ljava/lang/String;
    .local v16, "op":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v9, -0x1

    if-eq v1, v9, :cond_12

    .line 207
    invoke-virtual {v8, v10, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 209
    :cond_12
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "endStr":Ljava/lang/String;
    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v9, :cond_13

    .line 211
    invoke-virtual {v1, v10, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 213
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .end local v1    # "endStr":Ljava/lang/String;
    .end local v8    # "startStr":Ljava/lang/String;
    goto :goto_9

    .line 217
    .end local v16    # "op":Ljava/lang/String;
    .local v1, "op":Ljava/lang/String;
    :cond_14
    move-object/from16 v16, v1

    .end local v1    # "op":Ljava/lang/String;
    .restart local v16    # "op":Ljava/lang/String;
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v11    # "start":Ljava/lang/Object;
    .end local v12    # "end":Ljava/lang/Object;
    .end local v13    # "startColValue":Ljava/lang/Object;
    .end local v14    # "endColValue":Ljava/lang/Object;
    nop

    .line 237
    .end local v5    # "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    .end local v16    # "op":Ljava/lang/String;
    .restart local v1    # "op":Ljava/lang/String;
    :goto_9
    move-object/from16 v1, p4

    .end local v1    # "op":Ljava/lang/String;
    .restart local v16    # "op":Ljava/lang/String;
    goto :goto_a

    .line 198
    .end local v16    # "op":Ljava/lang/String;
    .restart local v1    # "op":Ljava/lang/String;
    .restart local v5    # "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v11    # "start":Ljava/lang/Object;
    :cond_15
    move-object/from16 v16, v1

    .end local v1    # "op":Ljava/lang/String;
    .restart local v16    # "op":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    .end local v11    # "start":Ljava/lang/Object;
    .end local v16    # "op":Ljava/lang/String;
    .restart local v1    # "op":Ljava/lang/String;
    :cond_16
    move-object/from16 v16, v1

    .end local v1    # "op":Ljava/lang/String;
    .restart local v16    # "op":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v16    # "op":Ljava/lang/String;
    .restart local v1    # "op":Ljava/lang/String;
    :cond_17
    move-object/from16 v16, v1

    .end local v1    # "op":Ljava/lang/String;
    .restart local v16    # "op":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    .end local v5    # "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    .end local v16    # "op":Ljava/lang/String;
    .restart local v1    # "op":Ljava/lang/String;
    :cond_18
    move-object/from16 v16, v1

    .end local v1    # "op":Ljava/lang/String;
    .restart local v16    # "op":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Lcom/lidroid/xutils/db/table/ColumnUtils;->convert2DbColumnValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 226
    .end local p4    # "value":Ljava/lang/Object;
    .local v1, "value":Ljava/lang/Object;
    sget-object v2, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->TEXT:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->getDbColumnType(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 227
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "valueStr":Ljava/lang/String;
    const/16 v5, 0x27

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_19

    .line 229
    invoke-virtual {v2, v10, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 231
    :cond_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .end local v2    # "valueStr":Ljava/lang/String;
    goto :goto_a

    .line 233
    :cond_1a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    :goto_a
    iget-object v2, v0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    return-void
.end method

.method public static b()Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
    .locals 1

    .line 46
    new-instance v0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;-><init>()V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
    .locals 2
    .param p0, "columnName"    # Ljava/lang/String;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;-><init>()V

    .line 59
    .local v0, "result":Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->appendCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    return-object v0
.end method


# virtual methods
.method public and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "AND"

    :goto_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->appendCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-object p0
.end method

.method public expr(Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
    .locals 3
    .param p1, "expr"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-object p0
.end method

.method public expr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->appendCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    return-object p0
.end method

.method public getWhereItemSize()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "OR"

    :goto_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->appendCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const-string v0, ""

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 109
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
