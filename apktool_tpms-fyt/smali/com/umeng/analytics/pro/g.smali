.class public Lcom/umeng/analytics/pro/g;
.super Ljava/lang/Object;
.source "UMStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/g$a;,
        Lcom/umeng/analytics/pro/g$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x801

.field public static final b:I = 0x802

.field private static final c:I = 0x3e8

.field private static d:Landroid/content/Context; = null

.field private static e:Ljava/lang/String; = null

.field private static final f:Ljava/lang/String; = "umeng+"

.field private static final g:Ljava/lang/String; = "ek__id"

.field private static final h:Ljava/lang/String; = "ek_key"


# instance fields
.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    .line 44
    sput-object v0, Lcom/umeng/analytics/pro/g;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/g;->i:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/g;->j:Ljava/util/List;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/g;->k:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/g;->l:Ljava/util/List;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/g$1;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/umeng/analytics/pro/g;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;
    .locals 2

    .line 72
    invoke-static {}, Lcom/umeng/analytics/pro/g$b;->a()Lcom/umeng/analytics/pro/g;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 74
    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    .line 76
    invoke-direct {v0}, Lcom/umeng/analytics/pro/g;->k()V

    .line 79
    :cond_0
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Z)Ljava/lang/String;
    .locals 18

    .line 887
    move-object/from16 v1, p0

    .line 888
    nop

    .line 889
    nop

    .line 891
    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 892
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 893
    const-string v0, "select *  from __sd"

    .line 895
    invoke-virtual {v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 896
    if-eqz v4, :cond_d

    .line 898
    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 899
    nop

    .line 901
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 902
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 903
    const-string v6, "__f"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 904
    const-string v7, "__e"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 905
    const-string v8, "__ii"

    .line 906
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 908
    nop

    .line 909
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 910
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 911
    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-lez v12, :cond_6

    .line 912
    const-string v8, "__a"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 913
    const-string v9, "__b"

    .line 914
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 915
    const-string v10, "__c"

    .line 916
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 917
    const-string v11, "__d"

    .line 918
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 919
    iget-object v12, v1, Lcom/umeng/analytics/pro/g;->i:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 920
    const-string v12, "__sp"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 921
    const-string v13, "__pp"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 922
    const-string v14, "id"

    invoke-virtual {v5, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 923
    const-string v14, "start_time"

    invoke-virtual {v5, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 924
    const-string v14, "end_time"

    invoke-virtual {v5, v14, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 925
    const-string v14, "duration"

    .line 926
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v6, v15, v6

    .line 925
    invoke-virtual {v5, v14, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 928
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 929
    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {v1, v8}, Lcom/umeng/analytics/pro/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 930
    const-string v7, "pages"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 932
    :cond_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/umeng/analytics/AnalyticsConfig;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v7, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-ne v6, v7, :cond_1

    .line 934
    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {v1, v9}, Lcom/umeng/analytics/pro/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 935
    const-string v7, "autopages"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 937
    :cond_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 938
    const-string v6, "traffic"

    new-instance v7, Lorg/json/JSONObject;

    .line 939
    invoke-virtual {v1, v10}, Lcom/umeng/analytics/pro/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 938
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 941
    :cond_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 942
    const-string v6, "locations"

    new-instance v7, Lorg/json/JSONArray;

    .line 943
    invoke-virtual {v1, v11}, Lcom/umeng/analytics/pro/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 942
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 945
    :cond_3
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 946
    const-string v6, "_$sp"

    new-instance v7, Lorg/json/JSONObject;

    .line 947
    invoke-virtual {v1, v12}, Lcom/umeng/analytics/pro/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 949
    :cond_4
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 950
    const-string v6, "_$pp"

    new-instance v7, Lorg/json/JSONObject;

    .line 951
    invoke-virtual {v1, v13}, Lcom/umeng/analytics/pro/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 953
    :cond_5
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 954
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 958
    :cond_6
    if-eqz p2, :cond_7

    .line 959
    goto :goto_1

    .line 962
    :cond_7
    goto/16 :goto_0

    .line 964
    :cond_8
    :goto_1
    iget-object v5, v1, Lcom/umeng/analytics/pro/g;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v6, 0x1

    if-ge v5, v6, :cond_b

    .line 965
    nop

    .line 980
    if-eqz v4, :cond_9

    .line 981
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 984
    :cond_9
    if-eqz v3, :cond_a

    .line 985
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 987
    :catchall_0
    move-exception v0

    :cond_a
    :goto_2
    nop

    .line 988
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    return-object v2

    .line 967
    :cond_b
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_c

    .line 968
    const-string v5, "sessions"

    move-object/from16 v6, p1

    invoke-virtual {v6, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 970
    :cond_c
    nop

    .line 973
    :cond_d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 980
    if-eqz v4, :cond_e

    .line 981
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 984
    :cond_e
    if-eqz v3, :cond_f

    .line 985
    :try_start_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 987
    :catchall_1
    move-exception v0

    :cond_f
    :goto_3
    nop

    .line 988
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    .line 989
    goto :goto_7

    .line 978
    :catchall_2
    move-exception v0

    move-object/from16 v17, v4

    move-object v4, v2

    move-object/from16 v2, v17

    goto :goto_4

    .line 975
    :catch_0
    move-exception v0

    move-object/from16 v17, v4

    move-object v4, v2

    move-object/from16 v2, v17

    goto :goto_6

    .line 978
    :catchall_3
    move-exception v0

    move-object v4, v2

    goto :goto_4

    .line 975
    :catch_1
    move-exception v0

    move-object v4, v2

    goto :goto_6

    .line 978
    :catchall_4
    move-exception v0

    move-object v3, v2

    move-object v4, v3

    .line 980
    :goto_4
    if-eqz v2, :cond_10

    .line 981
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 984
    :cond_10
    if-eqz v3, :cond_11

    .line 985
    :try_start_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_5

    .line 987
    :catchall_5
    move-exception v0

    :cond_11
    :goto_5
    nop

    .line 988
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    .line 989
    move-object v2, v4

    goto :goto_7

    .line 975
    :catch_2
    move-exception v0

    move-object v3, v2

    move-object v4, v3

    .line 977
    :goto_6
    :try_start_7
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 980
    if-eqz v2, :cond_12

    .line 981
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 984
    :cond_12
    if-eqz v3, :cond_11

    .line 985
    :try_start_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_5

    .line 987
    :catchall_6
    move-exception v0

    goto :goto_5

    .line 990
    :goto_7
    return-object v2

    .line 980
    :catchall_7
    move-exception v0

    move-object v4, v0

    if-eqz v2, :cond_13

    .line 981
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 984
    :cond_13
    if-eqz v3, :cond_14

    .line 985
    :try_start_9
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_8

    .line 987
    :catchall_8
    move-exception v0

    :cond_14
    :goto_8
    nop

    .line 988
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    goto :goto_a

    :goto_9
    throw v4

    :goto_a
    goto :goto_9
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    .line 302
    const-string v0, "\", "

    const-string v1, "__pp"

    const-string v2, "__sp"

    const-string v3, "=\""

    :try_start_0
    const-string v4, "__f"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 303
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 304
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    nop

    .line 306
    nop

    .line 307
    const-string v7, ""

    if-eqz v6, :cond_0

    :try_start_1
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 308
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/umeng/analytics/pro/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 310
    :cond_0
    move-object v6, v7

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 311
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 314
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update __sd set __f=\""

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" where "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "__ii"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    goto :goto_1

    .line 321
    :catchall_0
    move-exception p1

    .line 324
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 473
    const-string v0, "\""

    const-string v1, "__ii"

    const-string v2, "__b"

    const-string v3, "__a"

    const-string v4, "=\""

    .line 475
    nop

    .line 476
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 477
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 478
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_4

    .line 535
    :cond_0
    nop

    .line 479
    return-void

    .line 481
    :cond_1
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 482
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 483
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_4

    .line 535
    :cond_2
    nop

    .line 484
    return-void

    .line 481
    :cond_3
    move-object p2, v5

    .line 488
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "__sd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 490
    invoke-virtual {p3, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 491
    nop

    .line 492
    if-eqz v2, :cond_5

    .line 493
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 494
    invoke-interface {v2, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 495
    invoke-virtual {p0, v3}, Lcom/umeng/analytics/pro/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 533
    :catchall_0
    move-exception p1

    move-object v5, v2

    goto/16 :goto_3

    .line 500
    :cond_5
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 501
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 502
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 506
    :cond_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    const/16 v6, 0x3e8

    if-le v5, v6, :cond_8

    .line 535
    if-eqz v2, :cond_7

    .line 536
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 508
    :cond_7
    return-void

    .line 510
    :cond_8
    nop

    .line 511
    const/4 v5, 0x0

    :goto_1
    :try_start_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ge v5, v6, :cond_a

    .line 515
    :try_start_3
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 519
    nop

    .line 520
    if-eqz v6, :cond_9

    .line 521
    :try_start_4
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 516
    :catch_0
    move-exception v6

    .line 517
    nop

    .line 518
    nop

    .line 511
    :cond_9
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 526
    :cond_a
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 527
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update __sd set "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" where "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 530
    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 535
    :cond_b
    if-eqz v2, :cond_c

    .line 536
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 533
    :catchall_1
    move-exception p1

    .line 535
    :goto_3
    if-eqz v5, :cond_c

    .line 536
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 539
    :cond_c
    :goto_4
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 9

    .line 651
    nop

    .line 652
    nop

    .line 654
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 655
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 656
    const-string v2, "select *  from __et"

    .line 657
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select *  from __et where __i=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 662
    :cond_0
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 663
    if-eqz v0, :cond_10

    .line 665
    nop

    .line 667
    nop

    .line 669
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 670
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 671
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/q;->b()Ljava/lang/String;

    move-result-object v3

    .line 673
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 674
    const-string v4, "__t"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 675
    const-string v5, "__i"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 676
    const-string v6, "__s"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 682
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "-1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 683
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 684
    move-object v5, v3

    .line 690
    :cond_3
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 692
    iget-object v8, p0, Lcom/umeng/analytics/pro/g;->j:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    const/16 v7, 0x801

    if-eq v4, v7, :cond_6

    const/16 v7, 0x802

    if-eq v4, v7, :cond_4

    goto :goto_3

    .line 708
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 709
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p0, v6}, Lcom/umeng/analytics/pro/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 711
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    goto :goto_1

    .line 713
    :cond_5
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 715
    :goto_1
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 716
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 696
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 697
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p0, v6}, Lcom/umeng/analytics/pro/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 699
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    goto :goto_2

    .line 701
    :cond_7
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 703
    :goto_2
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 704
    invoke-virtual {p2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 722
    :cond_8
    :goto_3
    goto/16 :goto_0

    .line 724
    :cond_9
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 725
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 726
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 727
    nop

    .line 728
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 729
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 730
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 731
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 732
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 733
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_a

    .line 734
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 736
    :cond_a
    goto :goto_4

    .line 737
    :cond_b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_c

    .line 738
    const-string p2, "ekv"

    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 741
    :cond_c
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_f

    .line 742
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 743
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 744
    nop

    .line 745
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 746
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 747
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 748
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 749
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 750
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_d

    .line 751
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 753
    :cond_d
    goto :goto_5

    .line 754
    :cond_e
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_f

    .line 755
    const-string v2, "gkv"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 759
    :cond_f
    nop

    .line 760
    nop

    .line 761
    nop

    .line 764
    :cond_10
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 770
    if-eqz v0, :cond_11

    .line 771
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 774
    :cond_11
    if-eqz v1, :cond_13

    .line 775
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 777
    :catchall_0
    move-exception p1

    goto :goto_7

    .line 768
    :catchall_1
    move-exception p1

    goto :goto_6

    .line 765
    :catch_0
    move-exception p1

    goto :goto_8

    .line 768
    :catchall_2
    move-exception p1

    move-object v1, v0

    .line 770
    :goto_6
    if-eqz v0, :cond_12

    .line 771
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 774
    :cond_12
    if-eqz v1, :cond_13

    .line 775
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_7

    .line 777
    :catchall_3
    move-exception p1

    :cond_13
    :goto_7
    nop

    .line 778
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    .line 779
    goto :goto_9

    .line 765
    :catch_1
    move-exception p1

    move-object v1, v0

    .line 767
    :goto_8
    :try_start_4
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 770
    if-eqz v0, :cond_14

    .line 771
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 774
    :cond_14
    if-eqz v1, :cond_13

    .line 775
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_7

    .line 777
    :catchall_4
    move-exception p1

    goto :goto_7

    .line 781
    :goto_9
    return-void

    .line 770
    :catchall_5
    move-exception p1

    if-eqz v0, :cond_15

    .line 771
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 774
    :cond_15
    if-eqz v1, :cond_16

    .line 775
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_a

    .line 777
    :catchall_6
    move-exception p2

    :cond_16
    :goto_a
    nop

    .line 778
    sget-object p2, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/e;->b()V

    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b
.end method

.method private b(Lorg/json/JSONObject;Z)Ljava/lang/String;
    .locals 10

    .line 1001
    nop

    .line 1002
    nop

    .line 1003
    nop

    .line 1005
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1006
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1007
    const-string v2, "select *  from __is"

    .line 1009
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1010
    if-eqz v2, :cond_6

    .line 1012
    :try_start_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1013
    nop

    .line 1015
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1016
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1018
    const-string v5, "__e"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1019
    const-string v6, "__ii"

    .line 1020
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1022
    nop

    .line 1023
    iget-object v6, p0, Lcom/umeng/analytics/pro/g;->l:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1024
    const-string v6, "__sp"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1025
    const-string v7, "__pp"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1026
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1027
    const-string v8, "_$sp"

    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {p0, v6}, Lcom/umeng/analytics/pro/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1030
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1031
    const-string v6, "_$pp"

    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {p0, v7}, Lcom/umeng/analytics/pro/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1034
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1036
    const-string v6, "id"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1037
    const-string v6, "start_time"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1039
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 1040
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1044
    :cond_2
    if-eqz p2, :cond_3

    .line 1045
    goto :goto_1

    .line 1048
    :cond_3
    goto :goto_0

    .line 1053
    :cond_4
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_5

    .line 1054
    const-string p2, "sessions"

    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1056
    :cond_5
    nop

    .line 1059
    :cond_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1066
    if-eqz v2, :cond_7

    .line 1067
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1070
    :cond_7
    if-eqz v1, :cond_8

    .line 1071
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1073
    :catchall_0
    move-exception p1

    :cond_8
    :goto_2
    nop

    .line 1074
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    .line 1075
    goto :goto_6

    .line 1064
    :catchall_1
    move-exception p1

    move-object p1, v0

    move-object v0, v2

    goto :goto_3

    .line 1061
    :catch_0
    move-exception p1

    move-object p1, v0

    move-object v0, v2

    goto :goto_5

    .line 1064
    :catchall_2
    move-exception p1

    move-object p1, v0

    goto :goto_3

    .line 1061
    :catch_1
    move-exception p1

    move-object p1, v0

    goto :goto_5

    .line 1064
    :catchall_3
    move-exception p1

    move-object p1, v0

    move-object v1, p1

    .line 1066
    :goto_3
    if-eqz v0, :cond_9

    .line 1067
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1070
    :cond_9
    if-eqz v1, :cond_a

    .line 1071
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    .line 1073
    :catchall_4
    move-exception p2

    :cond_a
    :goto_4
    nop

    .line 1074
    sget-object p2, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/e;->b()V

    .line 1075
    move-object v0, p1

    goto :goto_6

    .line 1061
    :catch_2
    move-exception p1

    move-object p1, v0

    move-object v1, p1

    .line 1063
    :goto_5
    :try_start_5
    sget-object p2, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 1066
    if-eqz v0, :cond_b

    .line 1067
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1070
    :cond_b
    if-eqz v1, :cond_a

    .line 1071
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_4

    .line 1073
    :catchall_5
    move-exception p2

    goto :goto_4

    .line 1076
    :goto_6
    return-object v0

    .line 1066
    :catchall_6
    move-exception p1

    if-eqz v0, :cond_c

    .line 1067
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1070
    :cond_c
    if-eqz v1, :cond_d

    .line 1071
    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_7

    .line 1073
    :catchall_7
    move-exception p2

    :cond_d
    :goto_7
    nop

    .line 1074
    sget-object p2, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/e;->b()V

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .line 334
    const-string v0, "__pp"

    const-string v1, "__sp"

    const-string v2, "__e"

    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 336
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 337
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    nop

    .line 339
    nop

    .line 340
    const-string v6, ""

    if-eqz v5, :cond_0

    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 341
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/umeng/analytics/pro/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 343
    :cond_0
    move-object v5, v6

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 344
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 347
    :cond_1
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 348
    const-string v7, "__ii"

    invoke-virtual {p2, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string p1, "__av"

    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string p1, "__vc"

    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string p1, "__is"

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 355
    :catchall_0
    move-exception p1

    .line 359
    :goto_1
    nop

    .line 360
    return-void
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4

    .line 790
    nop

    .line 791
    nop

    .line 793
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 794
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 795
    const-string v2, "select *  from __er"

    .line 796
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 797
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select *  from __er where __i=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 801
    :cond_0
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 802
    if-eqz v0, :cond_3

    .line 803
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 804
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 805
    const-string v2, "__a"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 806
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 807
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0, v2}, Lcom/umeng/analytics/pro/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 809
    :cond_1
    goto :goto_0

    .line 810
    :cond_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 811
    const-string v2, "error"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 816
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 822
    if-eqz v0, :cond_4

    .line 823
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 826
    :cond_4
    if-eqz v1, :cond_6

    .line 827
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 829
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 820
    :catchall_1
    move-exception p1

    goto :goto_1

    .line 817
    :catch_0
    move-exception p1

    goto :goto_3

    .line 820
    :catchall_2
    move-exception p1

    move-object v1, v0

    .line 822
    :goto_1
    if-eqz v0, :cond_5

    .line 823
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 826
    :cond_5
    if-eqz v1, :cond_6

    .line 827
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    .line 829
    :catchall_3
    move-exception p1

    :cond_6
    :goto_2
    nop

    .line 830
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    .line 831
    goto :goto_4

    .line 817
    :catch_1
    move-exception p1

    move-object v1, v0

    .line 819
    :goto_3
    :try_start_4
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 822
    if-eqz v0, :cond_7

    .line 823
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 826
    :cond_7
    if-eqz v1, :cond_6

    .line 827
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    .line 829
    :catchall_4
    move-exception p1

    goto :goto_2

    .line 832
    :goto_4
    return-void

    .line 822
    :catchall_5
    move-exception p1

    if-eqz v0, :cond_8

    .line 823
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 826
    :cond_8
    if-eqz v1, :cond_9

    .line 827
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_5

    .line 829
    :catchall_6
    move-exception p2

    :cond_9
    :goto_5
    nop

    .line 830
    sget-object p2, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/e;->b()V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method private c(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    .line 400
    const-string v0, "__d"

    .line 403
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 406
    nop

    .line 407
    const-string v3, "\""

    if-eqz v2, :cond_0

    .line 408
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select __d from __sd where __ii=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 411
    invoke-virtual {p3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 412
    if-eqz v4, :cond_1

    .line 413
    :goto_0
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 414
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 415
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 407
    :cond_0
    move-object v4, v1

    .line 420
    :cond_1
    const-string v0, "=\""

    const-string v5, "__ii"

    const-string v6, "\" where "

    if-eqz v2, :cond_3

    .line 421
    :try_start_3
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 422
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 423
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 425
    :cond_2
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 427
    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update  __sd set __d=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 436
    :cond_3
    const-string v1, "__c"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 437
    if-eqz v1, :cond_4

    .line 438
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update  __sd set __c=\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-virtual {p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 446
    :cond_4
    const-string v1, "__f"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 447
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update  __sd set __f=\""

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 450
    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 454
    if-eqz v4, :cond_5

    .line 455
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 451
    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 454
    :goto_1
    if-eqz v1, :cond_5

    .line 455
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 459
    :cond_5
    :goto_2
    return-void
.end method

.method private k()V
    .locals 1

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    invoke-direct {p0}, Lcom/umeng/analytics/pro/g;->l()V

    .line 85
    iget-object v0, p0, Lcom/umeng/analytics/pro/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    iget-object v0, p0, Lcom/umeng/analytics/pro/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    iget-object v0, p0, Lcom/umeng/analytics/pro/g;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    monitor-exit p0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private l()V
    .locals 8

    .line 1347
    const-string v0, "ek_key"

    const-string v1, "ek__id"

    :try_start_0
    sget-object v2, Lcom/umeng/analytics/pro/g;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1350
    sget-object v2, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/utils/UMUtils;->getMultiProcessSP(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1351
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1352
    sget-object v2, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDBencryptID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1353
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1355
    sget-object v3, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/umeng/commonsdk/utils/UMUtils;->setMultiProcessSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_4

    .line 1359
    const/16 v1, 0x9

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1362
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1363
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1364
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1365
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 1366
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1368
    :cond_1
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    rsub-int/lit8 v6, v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1371
    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1362
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1374
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/analytics/pro/g;->e:Ljava/lang/String;

    .line 1376
    :cond_4
    sget-object v1, Lcom/umeng/analytics/pro/g;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/umeng/analytics/pro/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/umeng/analytics/pro/g;->e:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/analytics/pro/g;->e:Ljava/lang/String;

    .line 1382
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getMultiProcessSP(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1383
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "umeng+"

    if-eqz v2, :cond_5

    .line 1385
    :try_start_1
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/umeng/analytics/pro/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/umeng/commonsdk/utils/UMUtils;->setMultiProcessSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1387
    :cond_5
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1388
    invoke-virtual {p0, v4, v3}, Lcom/umeng/analytics/pro/g;->b(ZZ)V

    .line 1389
    invoke-virtual {p0, v4, v3}, Lcom/umeng/analytics/pro/g;->a(ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1395
    :cond_6
    :goto_2
    goto :goto_3

    .line 1394
    :catchall_0
    move-exception v0

    .line 1396
    :goto_3
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 4

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select __f from __sd where __ii=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 370
    nop

    .line 371
    nop

    .line 372
    nop

    .line 374
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 375
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 376
    invoke-virtual {v3, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_0

    .line 378
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 379
    const-string p1, "__f"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    :cond_0
    if-eqz v0, :cond_1

    .line 387
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 392
    :catch_0
    move-exception p1

    goto :goto_6

    .line 389
    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    .line 390
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 385
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 381
    :catch_1
    move-exception p1

    goto :goto_4

    .line 385
    :catchall_1
    move-exception p1

    move-object v3, v0

    .line 386
    :goto_1
    if-eqz v0, :cond_2

    .line 387
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 392
    :catch_2
    move-exception v0

    goto :goto_3

    .line 389
    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    .line 390
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 392
    :cond_3
    :goto_3
    nop

    .line 393
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    throw p1

    .line 381
    :catch_3
    move-exception p1

    move-object v3, v0

    .line 386
    :goto_4
    if-eqz v0, :cond_4

    .line 387
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 392
    :catch_4
    move-exception p1

    goto :goto_6

    .line 389
    :cond_4
    :goto_5
    if-eqz v3, :cond_5

    .line 390
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 392
    :cond_5
    :goto_6
    nop

    .line 393
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    .line 394
    nop

    .line 395
    return-wide v1
.end method

.method public a(Z)Lorg/json/JSONObject;
    .locals 2

    .line 553
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/g;->a()V

    .line 554
    iget-object v0, p0, Lcom/umeng/analytics/pro/g;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 556
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 558
    if-nez p1, :cond_0

    .line 559
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/g;->a(Lorg/json/JSONObject;Z)Ljava/lang/String;

    .line 560
    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/g;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 561
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/g;->a(Lorg/json/JSONObject;Z)Ljava/lang/String;

    move-result-object p1

    .line 573
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 574
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/g;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 575
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/g;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 580
    :cond_1
    :goto_0
    return-object v0
.end method

.method public a()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/umeng/analytics/pro/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 10

    .line 110
    const-string v0, "__t"

    const-string v1, "__i"

    .line 111
    nop

    .line 112
    nop

    .line 114
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 115
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 116
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ge v4, v5, :cond_2

    .line 118
    :try_start_2
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 119
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 120
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 124
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v9, "-1"

    if-nez v8, :cond_0

    :try_start_3
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 125
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object v7

    invoke-virtual {v7}, Lcom/umeng/analytics/pro/q;->b()Ljava/lang/String;

    move-result-object v7

    .line 126
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 127
    move-object v7, v9

    .line 130
    :cond_1
    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v7, "__e"

    const-string v8, "id"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v7, "__av"

    sget-object v8, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v8}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v7, "__vc"

    sget-object v8, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v8}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    const-string v7, "__s"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/umeng/analytics/pro/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v5, "__et"

    invoke-virtual {v3, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    goto :goto_1

    .line 141
    :catch_0
    move-exception v5

    .line 116
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 144
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 151
    if-eqz v3, :cond_3

    .line 152
    :try_start_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 154
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 148
    :catchall_1
    move-exception p1

    move-object v2, v3

    goto :goto_2

    .line 145
    :catch_1
    move-exception p1

    move-object v2, v3

    goto :goto_4

    .line 148
    :catchall_2
    move-exception p1

    .line 151
    :goto_2
    if-eqz v2, :cond_3

    .line 152
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    .line 154
    :catchall_3
    move-exception p1

    :cond_3
    :goto_3
    nop

    .line 155
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    .line 156
    goto :goto_5

    .line 145
    :catch_2
    move-exception p1

    .line 147
    :goto_4
    :try_start_7
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 151
    if-eqz v2, :cond_3

    .line 152
    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_3

    .line 154
    :catchall_4
    move-exception p1

    goto :goto_3

    .line 157
    :goto_5
    return-void

    .line 150
    :catchall_5
    move-exception p1

    .line 151
    if-eqz v2, :cond_4

    .line 152
    :try_start_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_6

    .line 154
    :catchall_6
    move-exception v0

    :cond_4
    :goto_6
    nop

    .line 155
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public a(ZLjava/lang/String;)V
    .locals 3

    .line 1272
    const-string p1, "\""

    .line 1275
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1276
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1277
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from __er where __i=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1281
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from __et where __i=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1286
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1287
    iget-object v1, p0, Lcom/umeng/analytics/pro/g;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from __sd where __ii=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1292
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1295
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1302
    if-eqz v0, :cond_1

    .line 1303
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1305
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1299
    :catchall_1
    move-exception p1

    .line 1302
    if-eqz v0, :cond_1

    .line 1303
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1305
    :catchall_2
    move-exception p1

    :cond_1
    :goto_0
    nop

    .line 1306
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    .line 1307
    goto :goto_1

    .line 1296
    :catch_0
    move-exception p1

    .line 1298
    :try_start_3
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1302
    if-eqz v0, :cond_1

    .line 1303
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    .line 1305
    :catchall_3
    move-exception p1

    goto :goto_0

    .line 1308
    :goto_1
    return-void

    .line 1301
    :catchall_4
    move-exception p1

    .line 1302
    if-eqz v0, :cond_2

    .line 1303
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    .line 1305
    :catchall_5
    move-exception p2

    :cond_2
    :goto_2
    nop

    .line 1306
    sget-object p2, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/e;->b()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public a(ZZ)V
    .locals 3

    .line 1086
    nop

    .line 1088
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1089
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1090
    nop

    .line 1092
    if-eqz p2, :cond_0

    .line 1093
    if-eqz p1, :cond_1

    .line 1094
    const-string p1, "delete from __is"

    .line 1095
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 1099
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/g;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 1100
    if-lez p1, :cond_1

    .line 1101
    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 1102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from __is where __ii=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/umeng/analytics/pro/g;->l:Ljava/util/List;

    .line 1103
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1105
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1101
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1110
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1120
    if-eqz v0, :cond_2

    .line 1121
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1123
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1114
    :catchall_1
    move-exception p1

    .line 1120
    if-eqz v0, :cond_2

    .line 1121
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 1123
    :catchall_2
    move-exception p1

    :cond_2
    :goto_2
    nop

    .line 1124
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    .line 1125
    goto :goto_3

    .line 1111
    :catch_0
    move-exception p1

    .line 1113
    :try_start_3
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1120
    if-eqz v0, :cond_2

    .line 1121
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 1123
    :catchall_3
    move-exception p1

    goto :goto_2

    .line 1126
    :goto_3
    return-void

    .line 1119
    :catchall_4
    move-exception p1

    .line 1120
    if-eqz v0, :cond_3

    .line 1121
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    .line 1123
    :catchall_5
    move-exception p2

    :cond_3
    :goto_4
    nop

    .line 1124
    sget-object p2, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/e;->b()V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    .line 168
    nop

    .line 170
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 171
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 172
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 173
    const-string v3, "__i"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 176
    const-string p2, "__a"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string p1, "__t"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const-string p1, "__av"

    sget-object p2, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string p1, "__vc"

    sget-object p2, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string p1, "__er"

    invoke-virtual {v1, p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 185
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 192
    if-eqz v1, :cond_1

    .line 193
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 195
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 189
    :catchall_1
    move-exception p1

    move-object v0, v1

    goto :goto_0

    .line 186
    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    .line 189
    :catchall_2
    move-exception p1

    .line 192
    :goto_0
    if-eqz v0, :cond_1

    .line 193
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    .line 195
    :catchall_3
    move-exception p1

    :cond_1
    :goto_1
    nop

    .line 196
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    .line 197
    goto :goto_3

    .line 186
    :catch_1
    move-exception p1

    .line 188
    :goto_2
    :try_start_4
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 192
    if-eqz v0, :cond_1

    .line 193
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_1

    .line 195
    :catchall_4
    move-exception p1

    goto :goto_1

    .line 198
    :goto_3
    const/4 p1, 0x0

    return p1

    .line 191
    :catchall_5
    move-exception p1

    .line 192
    if-eqz v0, :cond_2

    .line 193
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_4

    .line 195
    :catchall_6
    move-exception p2

    :cond_2
    :goto_4
    nop

    .line 196
    sget-object p2, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/e;->b()V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z
    .locals 6

    .line 250
    const-string v0, "__e"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 251
    return v1

    .line 253
    :cond_0
    nop

    .line 255
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 256
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 257
    sget-object v4, Lcom/umeng/analytics/pro/g$a;->c:Lcom/umeng/analytics/pro/g$a;

    if-ne p3, v4, :cond_1

    .line 259
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 260
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 261
    const-string v5, "__ii"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string p1, "__av"

    sget-object p2, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string p1, "__vc"

    sget-object p2, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string p1, "__sd"

    invoke-virtual {v3, p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 268
    goto :goto_0

    :cond_1
    sget-object v0, Lcom/umeng/analytics/pro/g$a;->f:Lcom/umeng/analytics/pro/g$a;

    if-ne p3, v0, :cond_2

    .line 270
    invoke-direct {p0, p1, p2, v3}, Lcom/umeng/analytics/pro/g;->b(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 271
    :cond_2
    sget-object v0, Lcom/umeng/analytics/pro/g$a;->d:Lcom/umeng/analytics/pro/g$a;

    if-ne p3, v0, :cond_3

    .line 273
    invoke-direct {p0, p1, p2, v3}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 275
    :cond_3
    sget-object v0, Lcom/umeng/analytics/pro/g$a;->b:Lcom/umeng/analytics/pro/g$a;

    if-ne p3, v0, :cond_4

    .line 276
    const-string p3, "__a"

    invoke-direct {p0, p1, p2, v3, p3}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_4
    sget-object v0, Lcom/umeng/analytics/pro/g$a;->a:Lcom/umeng/analytics/pro/g$a;

    if-ne p3, v0, :cond_5

    .line 279
    const-string p3, "__b"

    invoke-direct {p0, p1, p2, v3, p3}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_5
    sget-object v0, Lcom/umeng/analytics/pro/g$a;->e:Lcom/umeng/analytics/pro/g$a;

    if-ne p3, v0, :cond_6

    .line 282
    invoke-direct {p0, p1, p2, v3}, Lcom/umeng/analytics/pro/g;->c(Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 284
    :cond_6
    :goto_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 291
    if-eqz v3, :cond_7

    .line 292
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 294
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 288
    :catchall_1
    move-exception p1

    move-object v2, v3

    goto :goto_1

    .line 285
    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_3

    .line 288
    :catchall_2
    move-exception p1

    .line 291
    :goto_1
    if-eqz v2, :cond_7

    .line 292
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    .line 294
    :catchall_3
    move-exception p1

    :cond_7
    :goto_2
    nop

    .line 295
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    .line 296
    goto :goto_4

    .line 285
    :catch_1
    move-exception p1

    .line 287
    :goto_3
    :try_start_4
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 291
    if-eqz v2, :cond_7

    .line 292
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_2

    .line 294
    :catchall_4
    move-exception p1

    goto :goto_2

    .line 297
    :goto_4
    return v1

    .line 290
    :catchall_5
    move-exception p1

    .line 291
    if-eqz v2, :cond_8

    .line 292
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_5

    .line 294
    :catchall_6
    move-exception p2

    :cond_8
    :goto_5
    nop

    .line 295
    sget-object p2, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/e;->b()V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public b(Z)Lorg/json/JSONObject;
    .locals 1

    .line 638
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 639
    invoke-direct {p0, v0, p1}, Lcom/umeng/analytics/pro/g;->b(Lorg/json/JSONObject;Z)Ljava/lang/String;

    .line 641
    return-object v0
.end method

.method public b()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/umeng/analytics/pro/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1316
    nop

    .line 1318
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1319
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from __is where __ii=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1323
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1325
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1332
    if-eqz v0, :cond_1

    .line 1333
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1335
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1329
    :catchall_1
    move-exception p1

    .line 1332
    if-eqz v0, :cond_1

    .line 1333
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1335
    :catchall_2
    move-exception p1

    :cond_1
    :goto_0
    nop

    .line 1336
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    .line 1337
    goto :goto_1

    .line 1326
    :catch_0
    move-exception p1

    .line 1328
    :try_start_3
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1332
    if-eqz v0, :cond_1

    .line 1333
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    .line 1335
    :catchall_3
    move-exception p1

    goto :goto_0

    .line 1338
    :goto_1
    return-void

    .line 1331
    :catchall_4
    move-exception p1

    .line 1332
    if-eqz v0, :cond_2

    .line 1333
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    .line 1335
    :catchall_5
    move-exception v0

    :cond_2
    :goto_2
    nop

    .line 1336
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public b(ZZ)V
    .locals 2

    .line 1135
    nop

    .line 1137
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1138
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1139
    nop

    .line 1141
    if-eqz p2, :cond_0

    .line 1142
    if-eqz p1, :cond_1

    .line 1143
    const-string p1, "delete from __sd"

    .line 1144
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 1149
    :cond_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/g;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 1150
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/umeng/analytics/pro/g;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 1151
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete from __sd where __ii=\""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/analytics/pro/g;->i:Ljava/util/List;

    .line 1152
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1153
    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1150
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1159
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1166
    if-eqz v0, :cond_2

    .line 1167
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1169
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1163
    :catchall_1
    move-exception p1

    .line 1166
    if-eqz v0, :cond_2

    .line 1167
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 1169
    :catchall_2
    move-exception p1

    :cond_2
    :goto_2
    nop

    .line 1170
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/e;->b()V

    .line 1171
    goto :goto_3

    .line 1160
    :catch_0
    move-exception p1

    .line 1162
    :try_start_3
    sget-object p1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1166
    if-eqz v0, :cond_2

    .line 1167
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 1169
    :catchall_3
    move-exception p1

    goto :goto_2

    .line 1172
    :goto_3
    return-void

    .line 1165
    :catchall_4
    move-exception p1

    .line 1166
    if-eqz v0, :cond_3

    .line 1167
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    .line 1169
    :catchall_5
    move-exception p2

    :cond_3
    :goto_4
    nop

    .line 1170
    sget-object p2, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/e;->b()V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1405
    nop

    .line 1407
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/g;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1408
    goto :goto_0

    .line 1410
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    sget-object v0, Lcom/umeng/analytics/pro/g;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->encrypt([B[B)[B

    move-result-object p1

    .line 1411
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    :goto_0
    goto :goto_1

    .line 1413
    :catch_0
    move-exception p1

    const/4 p1, 0x0

    .line 1415
    :goto_1
    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/umeng/analytics/pro/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1425
    nop

    .line 1427
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/g;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1428
    goto :goto_0

    .line 1430
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    .line 1431
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/umeng/analytics/pro/g;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->decrypt([B[B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    .line 1434
    :goto_0
    goto :goto_1

    .line 1433
    :catch_0
    move-exception p1

    const/4 p1, 0x0

    .line 1435
    :goto_1
    return-object p1
.end method

.method public d()V
    .locals 7

    .line 206
    nop

    .line 209
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 212
    invoke-static {}, Lcom/umeng/analytics/pro/q;->a()Lcom/umeng/analytics/pro/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/q;->c()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_1

    .line 233
    if-eqz v0, :cond_0

    .line 234
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 237
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    .line 215
    return-void

    .line 218
    :cond_1
    const/4 v2, 0x2

    :try_start_2
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "-1"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 219
    nop

    .line 220
    nop

    :goto_1
    if-ge v5, v2, :cond_2

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update __et set __i=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" where "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "__i"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 224
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 220
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 233
    if-eqz v0, :cond_3

    .line 234
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 236
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 230
    :catchall_2
    move-exception v1

    .line 233
    if-eqz v0, :cond_3

    .line 234
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 236
    :catchall_3
    move-exception v0

    :cond_3
    :goto_2
    nop

    .line 237
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    .line 238
    goto :goto_3

    .line 227
    :catch_0
    move-exception v1

    .line 229
    :try_start_5
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 233
    if-eqz v0, :cond_3

    .line 234
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_2

    .line 236
    :catchall_4
    move-exception v0

    goto :goto_2

    .line 239
    :goto_3
    return-void

    .line 232
    :catchall_5
    move-exception v1

    .line 233
    if-eqz v0, :cond_4

    .line 234
    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_4

    .line 236
    :catchall_6
    move-exception v0

    :cond_4
    :goto_4
    nop

    .line 237
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public e()Z
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/umeng/analytics/pro/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public f()Lorg/json/JSONObject;
    .locals 7

    .line 585
    const-string v0, "__vc"

    const-string v1, "__av"

    .line 586
    nop

    .line 587
    nop

    .line 588
    iget-object v2, p0, Lcom/umeng/analytics/pro/g;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 589
    return-object v3

    .line 592
    :cond_0
    :try_start_0
    sget-object v2, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 593
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 594
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select *  from __is where __ii=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/umeng/analytics/pro/g;->l:Ljava/util/List;

    const/4 v6, 0x0

    .line 595
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 597
    invoke-virtual {v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 598
    if-eqz v4, :cond_1

    .line 599
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 600
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 601
    :try_start_3
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 602
    nop

    .line 603
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 604
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 605
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 607
    move-object v3, v5

    goto :goto_0

    .line 615
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 612
    :catch_0
    move-exception v0

    goto :goto_3

    .line 610
    :cond_1
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 617
    if-eqz v4, :cond_2

    .line 618
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 621
    :cond_2
    if-eqz v2, :cond_3

    .line 622
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 624
    :catchall_1
    move-exception v0

    :cond_3
    :goto_1
    nop

    .line 625
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    .line 626
    goto :goto_7

    .line 615
    :catchall_2
    move-exception v0

    move-object v5, v3

    :goto_2
    move-object v3, v4

    goto :goto_4

    .line 612
    :catch_1
    move-exception v0

    move-object v5, v3

    :goto_3
    move-object v3, v4

    goto :goto_6

    .line 615
    :catchall_3
    move-exception v0

    move-object v5, v3

    goto :goto_4

    .line 612
    :catch_2
    move-exception v0

    move-object v5, v3

    goto :goto_6

    .line 615
    :catchall_4
    move-exception v0

    move-object v2, v3

    move-object v5, v2

    .line 617
    :goto_4
    if-eqz v3, :cond_4

    .line 618
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 621
    :cond_4
    if-eqz v2, :cond_5

    .line 622
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_5

    .line 624
    :catchall_5
    move-exception v0

    :cond_5
    :goto_5
    nop

    .line 625
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    .line 626
    move-object v3, v5

    goto :goto_7

    .line 612
    :catch_3
    move-exception v0

    move-object v2, v3

    move-object v5, v2

    .line 614
    :goto_6
    :try_start_7
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 617
    if-eqz v3, :cond_6

    .line 618
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 621
    :cond_6
    if-eqz v2, :cond_5

    .line 622
    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_5

    .line 624
    :catchall_6
    move-exception v0

    goto :goto_5

    .line 627
    :goto_7
    return-object v3

    .line 617
    :catchall_7
    move-exception v0

    if-eqz v3, :cond_7

    .line 618
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 621
    :cond_7
    if-eqz v2, :cond_8

    .line 622
    :try_start_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_8

    .line 624
    :catchall_8
    move-exception v1

    :cond_8
    :goto_8
    nop

    .line 625
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->b()V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public g()Lorg/json/JSONObject;
    .locals 7

    .line 836
    const-string v0, "__vc"

    const-string v1, "__av"

    .line 837
    nop

    .line 838
    nop

    .line 839
    iget-object v2, p0, Lcom/umeng/analytics/pro/g;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 840
    return-object v3

    .line 843
    :cond_0
    :try_start_0
    sget-object v2, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 844
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 845
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select *  from __sd where __ii=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/umeng/analytics/pro/g;->i:Ljava/util/List;

    const/4 v6, 0x0

    .line 846
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 848
    invoke-virtual {v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 849
    if-eqz v4, :cond_1

    .line 850
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 851
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 852
    :try_start_3
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 853
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 854
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 855
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 857
    move-object v3, v5

    goto :goto_0

    .line 865
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 862
    :catch_0
    move-exception v0

    goto :goto_3

    .line 860
    :cond_1
    :goto_0
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 867
    if-eqz v4, :cond_2

    .line 868
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 871
    :cond_2
    if-eqz v2, :cond_3

    .line 872
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 874
    :catchall_1
    move-exception v0

    :cond_3
    :goto_1
    nop

    .line 875
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    .line 876
    goto :goto_7

    .line 865
    :catchall_2
    move-exception v0

    move-object v5, v3

    :goto_2
    move-object v3, v4

    goto :goto_4

    .line 862
    :catch_1
    move-exception v0

    move-object v5, v3

    :goto_3
    move-object v3, v4

    goto :goto_6

    .line 865
    :catchall_3
    move-exception v0

    move-object v5, v3

    goto :goto_4

    .line 862
    :catch_2
    move-exception v0

    move-object v5, v3

    goto :goto_6

    .line 865
    :catchall_4
    move-exception v0

    move-object v2, v3

    move-object v5, v2

    .line 867
    :goto_4
    if-eqz v3, :cond_4

    .line 868
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 871
    :cond_4
    if-eqz v2, :cond_5

    .line 872
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_5

    .line 874
    :catchall_5
    move-exception v0

    :cond_5
    :goto_5
    nop

    .line 875
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    .line 876
    move-object v3, v5

    goto :goto_7

    .line 862
    :catch_3
    move-exception v0

    move-object v2, v3

    move-object v5, v2

    .line 864
    :goto_6
    :try_start_7
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 867
    if-eqz v3, :cond_6

    .line 868
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 871
    :cond_6
    if-eqz v2, :cond_5

    .line 872
    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_5

    .line 874
    :catchall_6
    move-exception v0

    goto :goto_5

    .line 877
    :goto_7
    return-object v3

    .line 867
    :catchall_7
    move-exception v0

    if-eqz v3, :cond_7

    .line 868
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 871
    :cond_7
    if-eqz v2, :cond_8

    .line 872
    :try_start_9
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_8

    .line 874
    :catchall_8
    move-exception v1

    :cond_8
    :goto_8
    nop

    .line 875
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->b()V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public h()V
    .locals 4

    .line 1178
    nop

    .line 1180
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1181
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1183
    iget-object v1, p0, Lcom/umeng/analytics/pro/g;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1184
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/umeng/analytics/pro/g;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from __et where rowid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/umeng/analytics/pro/g;->j:Ljava/util/List;

    .line 1186
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1187
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1190
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/pro/g;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1191
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1198
    if-eqz v0, :cond_1

    .line 1199
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1201
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1195
    :catchall_1
    move-exception v1

    .line 1198
    if-eqz v0, :cond_1

    .line 1199
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 1201
    :catchall_2
    move-exception v0

    :cond_1
    :goto_1
    nop

    .line 1202
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    .line 1203
    goto :goto_2

    .line 1192
    :catch_0
    move-exception v1

    .line 1194
    :try_start_3
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1198
    if-eqz v0, :cond_1

    .line 1199
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    .line 1201
    :catchall_3
    move-exception v0

    goto :goto_1

    .line 1204
    :goto_2
    return-void

    .line 1197
    :catchall_4
    move-exception v1

    .line 1198
    if-eqz v0, :cond_2

    .line 1199
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_3

    .line 1201
    :catchall_5
    move-exception v0

    :cond_2
    :goto_3
    nop

    .line 1202
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method public i()V
    .locals 2

    .line 1210
    nop

    .line 1212
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1213
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1214
    const-string v1, "delete from __er"

    .line 1215
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1223
    if-eqz v0, :cond_0

    .line 1224
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1226
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1220
    :catchall_1
    move-exception v1

    .line 1223
    if-eqz v0, :cond_0

    .line 1224
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1226
    :catchall_2
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 1227
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    .line 1228
    goto :goto_1

    .line 1217
    :catch_0
    move-exception v1

    .line 1219
    :try_start_3
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1223
    if-eqz v0, :cond_0

    .line 1224
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    .line 1226
    :catchall_3
    move-exception v0

    goto :goto_0

    .line 1229
    :goto_1
    return-void

    .line 1222
    :catchall_4
    move-exception v1

    .line 1223
    if-eqz v0, :cond_1

    .line 1224
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    .line 1226
    :catchall_5
    move-exception v0

    :cond_1
    :goto_2
    nop

    .line 1227
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public j()V
    .locals 5

    .line 1235
    const-string v0, "\""

    iget-object v1, p0, Lcom/umeng/analytics/pro/g;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 1236
    nop

    .line 1238
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1239
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from __er where __i=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/umeng/analytics/pro/g;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1242
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from __et where __i=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/umeng/analytics/pro/g;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1245
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1254
    if-eqz v1, :cond_0

    .line 1255
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1257
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1251
    :catchall_1
    move-exception v0

    goto :goto_0

    .line 1248
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1251
    :catchall_2
    move-exception v0

    move-object v1, v2

    .line 1254
    :goto_0
    if-eqz v1, :cond_0

    .line 1255
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    .line 1257
    :catchall_3
    move-exception v0

    :cond_0
    :goto_1
    nop

    .line 1258
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/e;->b()V

    .line 1259
    goto :goto_4

    .line 1248
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 1250
    :goto_2
    :try_start_4
    sget-object v0, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->a(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 1254
    if-eqz v1, :cond_0

    .line 1255
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_1

    .line 1257
    :catchall_4
    move-exception v0

    goto :goto_1

    .line 1253
    :catchall_5
    move-exception v0

    .line 1254
    if-eqz v1, :cond_1

    .line 1255
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_3

    .line 1257
    :catchall_6
    move-exception v1

    :cond_1
    :goto_3
    nop

    .line 1258
    sget-object v1, Lcom/umeng/analytics/pro/g;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/e;->b()V

    throw v0

    .line 1261
    :cond_2
    :goto_4
    iput-object v2, p0, Lcom/umeng/analytics/pro/g;->k:Ljava/lang/String;

    .line 1262
    return-void
.end method
