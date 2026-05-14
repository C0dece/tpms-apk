.class public Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;
.super Ljava/lang/Object;
.source "ColumnConverterFactory.java"


# static fields
.field private static final columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/converter/ColumnConverter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    new-instance v0, Lcom/lidroid/xutils/db/converter/BooleanColumnConverter;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/converter/BooleanColumnConverter;-><init>()V

    .line 68
    .local v0, "booleanColumnConverter":Lcom/lidroid/xutils/db/converter/BooleanColumnConverter;
    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v1, Lcom/lidroid/xutils/db/converter/ByteArrayColumnConverter;

    invoke-direct {v1}, Lcom/lidroid/xutils/db/converter/ByteArrayColumnConverter;-><init>()V

    .line 72
    .local v1, "byteArrayColumnConverter":Lcom/lidroid/xutils/db/converter/ByteArrayColumnConverter;
    sget-object v2, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v3, [B

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v2, Lcom/lidroid/xutils/db/converter/ByteColumnConverter;

    invoke-direct {v2}, Lcom/lidroid/xutils/db/converter/ByteColumnConverter;-><init>()V

    .line 75
    .local v2, "byteColumnConverter":Lcom/lidroid/xutils/db/converter/ByteColumnConverter;
    sget-object v3, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v3, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v3, Lcom/lidroid/xutils/db/converter/CharColumnConverter;

    invoke-direct {v3}, Lcom/lidroid/xutils/db/converter/CharColumnConverter;-><init>()V

    .line 79
    .local v3, "charColumnConverter":Lcom/lidroid/xutils/db/converter/CharColumnConverter;
    sget-object v4, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v4, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v4, Lcom/lidroid/xutils/db/converter/DateColumnConverter;

    invoke-direct {v4}, Lcom/lidroid/xutils/db/converter/DateColumnConverter;-><init>()V

    .line 83
    .local v4, "dateColumnConverter":Lcom/lidroid/xutils/db/converter/DateColumnConverter;
    sget-object v5, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v6, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v5, Lcom/lidroid/xutils/db/converter/DoubleColumnConverter;

    invoke-direct {v5}, Lcom/lidroid/xutils/db/converter/DoubleColumnConverter;-><init>()V

    .line 86
    .local v5, "doubleColumnConverter":Lcom/lidroid/xutils/db/converter/DoubleColumnConverter;
    sget-object v6, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v6, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v6, Lcom/lidroid/xutils/db/converter/FloatColumnConverter;

    invoke-direct {v6}, Lcom/lidroid/xutils/db/converter/FloatColumnConverter;-><init>()V

    .line 90
    .local v6, "floatColumnConverter":Lcom/lidroid/xutils/db/converter/FloatColumnConverter;
    sget-object v7, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v7, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v7, Lcom/lidroid/xutils/db/converter/IntegerColumnConverter;

    invoke-direct {v7}, Lcom/lidroid/xutils/db/converter/IntegerColumnConverter;-><init>()V

    .line 94
    .local v7, "integerColumnConverter":Lcom/lidroid/xutils/db/converter/IntegerColumnConverter;
    sget-object v8, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v8, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v8, Lcom/lidroid/xutils/db/converter/LongColumnConverter;

    invoke-direct {v8}, Lcom/lidroid/xutils/db/converter/LongColumnConverter;-><init>()V

    .line 98
    .local v8, "longColumnConverter":Lcom/lidroid/xutils/db/converter/LongColumnConverter;
    sget-object v9, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v9, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v9, Lcom/lidroid/xutils/db/converter/ShortColumnConverter;

    invoke-direct {v9}, Lcom/lidroid/xutils/db/converter/ShortColumnConverter;-><init>()V

    .line 102
    .local v9, "shortColumnConverter":Lcom/lidroid/xutils/db/converter/ShortColumnConverter;
    sget-object v10, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v10, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v11, Ljava/lang/Short;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v10, Lcom/lidroid/xutils/db/converter/SqlDateColumnConverter;

    invoke-direct {v10}, Lcom/lidroid/xutils/db/converter/SqlDateColumnConverter;-><init>()V

    .line 106
    .local v10, "sqlDateColumnConverter":Lcom/lidroid/xutils/db/converter/SqlDateColumnConverter;
    sget-object v11, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v12, Ljava/sql/Date;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v11, Lcom/lidroid/xutils/db/converter/StringColumnConverter;

    invoke-direct {v11}, Lcom/lidroid/xutils/db/converter/StringColumnConverter;-><init>()V

    .line 109
    .local v11, "stringColumnConverter":Lcom/lidroid/xutils/db/converter/StringColumnConverter;
    sget-object v12, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .end local v0    # "booleanColumnConverter":Lcom/lidroid/xutils/db/converter/BooleanColumnConverter;
    .end local v1    # "byteArrayColumnConverter":Lcom/lidroid/xutils/db/converter/ByteArrayColumnConverter;
    .end local v2    # "byteColumnConverter":Lcom/lidroid/xutils/db/converter/ByteColumnConverter;
    .end local v3    # "charColumnConverter":Lcom/lidroid/xutils/db/converter/CharColumnConverter;
    .end local v4    # "dateColumnConverter":Lcom/lidroid/xutils/db/converter/DateColumnConverter;
    .end local v5    # "doubleColumnConverter":Lcom/lidroid/xutils/db/converter/DoubleColumnConverter;
    .end local v6    # "floatColumnConverter":Lcom/lidroid/xutils/db/converter/FloatColumnConverter;
    .end local v7    # "integerColumnConverter":Lcom/lidroid/xutils/db/converter/IntegerColumnConverter;
    .end local v8    # "longColumnConverter":Lcom/lidroid/xutils/db/converter/LongColumnConverter;
    .end local v9    # "shortColumnConverter":Lcom/lidroid/xutils/db/converter/ShortColumnConverter;
    .end local v10    # "sqlDateColumnConverter":Lcom/lidroid/xutils/db/converter/SqlDateColumnConverter;
    .end local v11    # "stringColumnConverter":Lcom/lidroid/xutils/db/converter/StringColumnConverter;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getColumnConverter(Ljava/lang/Class;)Lcom/lidroid/xutils/db/converter/ColumnConverter;
    .locals 3
    .param p0, "columnType"    # Ljava/lang/Class;

    .line 19
    sget-object v0, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/converter/ColumnConverter;

    return-object v0

    .line 21
    :cond_0
    const-class v0, Lcom/lidroid/xutils/db/converter/ColumnConverter;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/converter/ColumnConverter;

    .line 24
    .local v0, "columnConverter":Lcom/lidroid/xutils/db/converter/ColumnConverter;
    if-eqz v0, :cond_1

    .line 25
    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    return-object v0

    .line 28
    .end local v0    # "columnConverter":Lcom/lidroid/xutils/db/converter/ColumnConverter;
    :catchall_0
    move-exception v0

    .line 31
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDbColumnType(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
    .locals 2
    .param p0, "columnType"    # Ljava/lang/Class;

    .line 35
    invoke-static {p0}, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->getColumnConverter(Ljava/lang/Class;)Lcom/lidroid/xutils/db/converter/ColumnConverter;

    move-result-object v0

    .line 36
    .local v0, "converter":Lcom/lidroid/xutils/db/converter/ColumnConverter;
    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Lcom/lidroid/xutils/db/converter/ColumnConverter;->getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    move-result-object v1

    return-object v1

    .line 39
    :cond_0
    sget-object v1, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->TEXT:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    return-object v1
.end method

.method public static isSupportColumnConverter(Ljava/lang/Class;)Z
    .locals 5
    .param p0, "columnType"    # Ljava/lang/Class;

    .line 47
    sget-object v0, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 48
    return v1

    .line 49
    :cond_0
    const-class v0, Lcom/lidroid/xutils/db/converter/ColumnConverter;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 51
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/converter/ColumnConverter;

    .line 52
    .local v0, "columnConverter":Lcom/lidroid/xutils/db/converter/ColumnConverter;
    if-eqz v0, :cond_1

    .line 53
    sget-object v3, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    if-nez v0, :cond_2

    return v1

    :cond_2
    return v2

    .line 56
    .end local v0    # "columnConverter":Lcom/lidroid/xutils/db/converter/ColumnConverter;
    :catchall_0
    move-exception v0

    .line 59
    :cond_3
    return v2
.end method

.method public static registerColumnConverter(Ljava/lang/Class;Lcom/lidroid/xutils/db/converter/ColumnConverter;)V
    .locals 2
    .param p0, "columnType"    # Ljava/lang/Class;
    .param p1, "columnConverter"    # Lcom/lidroid/xutils/db/converter/ColumnConverter;

    .line 43
    sget-object v0, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method
