.class public Lcom/umeng/analytics/process/UMProcessDBHelper;
.super Ljava/lang/Object;
.source "UMProcessDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/process/UMProcessDBHelper$ProcessToMainCallback;,
        Lcom/umeng/analytics/process/UMProcessDBHelper$a;,
        Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/umeng/analytics/process/UMProcessDBHelper;


# instance fields
.field private ekvCallBack:Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;

.field private mContext:Landroid/content/Context;

.field private mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-direct {v0}, Lcom/umeng/commonsdk/utils/FileLockUtil;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    .line 75
    new-instance v0, Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;Lcom/umeng/analytics/process/UMProcessDBHelper$1;)V

    iput-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->ekvCallBack:Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-direct {v0}, Lcom/umeng/commonsdk/utils/FileLockUtil;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    .line 75
    new-instance v0, Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;Lcom/umeng/analytics/process/UMProcessDBHelper$1;)V

    iput-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->ekvCallBack:Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;

    .line 81
    invoke-static {}, Lcom/umeng/analytics/pro/w;->a()Lcom/umeng/analytics/pro/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/pro/w;->a(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method static synthetic access$200(Lcom/umeng/analytics/process/UMProcessDBHelper;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->processToMain(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/umeng/analytics/process/UMProcessDBHelper;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private datasAdapter(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/process/UMProcessDBHelper$a;",
            ">;"
        }
    .end annotation

    .line 382
    const-string v0, "__t"

    const-string v1, "__i"

    const-string v2, "ds"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 384
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 385
    return-object v3

    .line 387
    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 389
    :try_start_0
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 390
    new-instance v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/umeng/analytics/process/UMProcessDBHelper$a;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;Lcom/umeng/analytics/process/UMProcessDBHelper$1;)V

    .line 391
    const-string v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->c:Ljava/lang/String;

    .line 392
    iget-object v7, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->g:Ljava/lang/String;

    .line 393
    iget-object v7, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->h:Ljava/lang/String;

    .line 394
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->b:Ljava/lang/String;

    .line 395
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->e:I

    .line 396
    iput-object p1, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->f:Ljava/lang/String;

    .line 398
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 399
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/umeng/analytics/process/UMProcessDBHelper;->getDataSource()I

    move-result v7

    invoke-virtual {v5, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 403
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 404
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 406
    invoke-static {}, Lcom/umeng/analytics/pro/w;->a()Lcom/umeng/analytics/pro/w;

    move-result-object v7

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/umeng/analytics/pro/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->d:Ljava/lang/String;

    .line 408
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 410
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    goto :goto_1

    .line 412
    :catch_0
    move-exception v5

    .line 387
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 415
    :cond_2
    return-object v3
.end method

.method private dbIsExists(Ljava/lang/String;)Z
    .locals 2

    .line 511
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/analytics/process/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 513
    const/4 p1, 0x1

    return p1

    .line 515
    :catchall_0
    move-exception p1

    .line 517
    :cond_0
    nop

    .line 519
    const/4 p1, 0x0

    return p1
.end method

.method private getDataSource()I
    .locals 1

    .line 592
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/umeng/analytics/process/UMProcessDBHelper;
    .locals 2

    .line 85
    sget-object v0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mInstance:Lcom/umeng/analytics/process/UMProcessDBHelper;

    if-nez v0, :cond_1

    .line 86
    const-class v0, Lcom/umeng/analytics/process/UMProcessDBHelper;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/umeng/analytics/process/UMProcessDBHelper;->mInstance:Lcom/umeng/analytics/process/UMProcessDBHelper;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/umeng/analytics/process/UMProcessDBHelper;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/process/UMProcessDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/analytics/process/UMProcessDBHelper;->mInstance:Lcom/umeng/analytics/process/UMProcessDBHelper;

    .line 90
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 93
    :cond_1
    :goto_0
    sget-object v0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mInstance:Lcom/umeng/analytics/process/UMProcessDBHelper;

    iput-object p0, v0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    .line 95
    return-object v0
.end method

.method private insertEvents_(Ljava/lang/String;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/process/UMProcessDBHelper$a;",
            ">;)Z"
        }
    .end annotation

    .line 341
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 345
    :cond_0
    nop

    .line 347
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 349
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 350
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 352
    :try_start_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 354
    const-string v5, "__i"

    iget-object v6, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v5, "__e"

    iget-object v6, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v5, "__t"

    iget v6, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    const-string v5, "__pn"

    iget-object v6, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->f:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v5, "__av"

    iget-object v6, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v5, "__vc"

    iget-object v6, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->h:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v5, "__s"

    iget-object v3, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v3, "__et_p"

    invoke-virtual {v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 363
    goto :goto_1

    .line 362
    :catch_0
    move-exception v3

    .line 364
    :goto_1
    goto :goto_0

    .line 365
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 370
    if-eqz v2, :cond_2

    .line 371
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 373
    :catchall_0
    move-exception p2

    :cond_2
    :goto_2
    nop

    .line 374
    iget-object p2, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    .line 375
    nop

    .line 377
    return v1

    .line 369
    :catchall_1
    move-exception p2

    move-object v0, v2

    goto :goto_3

    .line 366
    :catch_1
    move-exception p2

    move-object v0, v2

    goto :goto_5

    .line 369
    :catchall_2
    move-exception p2

    .line 370
    :goto_3
    if-eqz v0, :cond_3

    .line 371
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    .line 373
    :catchall_3
    move-exception v0

    :cond_3
    :goto_4
    nop

    .line 374
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    throw p2

    .line 366
    :catch_2
    move-exception p2

    .line 367
    :goto_5
    const/4 p2, 0x0

    .line 370
    if-eqz v0, :cond_4

    .line 371
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_6

    .line 373
    :catchall_4
    move-exception v0

    :cond_4
    :goto_6
    nop

    .line 374
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    return p2

    .line 342
    :cond_5
    :goto_7
    return v1
.end method

.method private processIsService(Landroid/content/Context;)Z
    .locals 2

    .line 597
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 599
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 601
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    if-eqz p1, :cond_0

    .line 603
    const/4 p1, 0x1

    return p1

    .line 606
    :cond_0
    goto :goto_0

    .line 605
    :catch_0
    move-exception p1

    .line 608
    :goto_0
    return v1
.end method

.method private processToMain(Ljava/lang/String;)V
    .locals 2

    .line 153
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->dbIsExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    return-void

    .line 158
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/UMProcessDBHelper;->readEventByProcess(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    return-void

    .line 164
    :cond_1
    const-string v1, "_main_"

    invoke-direct {p0, v1, v0}, Lcom/umeng/analytics/process/UMProcessDBHelper;->insertEvents_(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    .line 165
    if-eqz v1, :cond_2

    .line 167
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/analytics/process/UMProcessDBHelper;->deleteEventDatas(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 169
    :cond_2
    return-void
.end method

.method private readEventByProcess(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/process/UMProcessDBHelper$a;",
            ">;"
        }
    .end annotation

    .line 466
    const-string v0, "select *  from __et_p"

    .line 468
    nop

    .line 469
    nop

    .line 470
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 473
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 475
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 476
    invoke-virtual {v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    if-eqz v0, :cond_0

    .line 478
    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 479
    new-instance v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;

    invoke-direct {v4, p0, v2}, Lcom/umeng/analytics/process/UMProcessDBHelper$a;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;Lcom/umeng/analytics/process/UMProcessDBHelper$1;)V

    .line 480
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->a:I

    .line 481
    const-string v5, "__i"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->b:Ljava/lang/String;

    .line 482
    const-string v5, "__e"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->c:Ljava/lang/String;

    .line 483
    const-string v5, "__s"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->d:Ljava/lang/String;

    .line 484
    const-string v5, "__t"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->e:I

    .line 485
    const-string v5, "__pn"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->f:Ljava/lang/String;

    .line 486
    const-string v5, "__av"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->g:Ljava/lang/String;

    .line 487
    const-string v5, "__vc"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->h:Ljava/lang/String;

    .line 488
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 489
    goto :goto_0

    .line 491
    :catch_0
    move-exception v2

    goto :goto_2

    .line 496
    :cond_0
    if-eqz v0, :cond_1

    .line 497
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 502
    :catch_1
    move-exception v0

    goto :goto_4

    .line 499
    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    .line 500
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 495
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 491
    :catch_2
    move-exception v0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_2

    .line 495
    :catchall_1
    move-exception v1

    move-object v3, v2

    goto :goto_5

    .line 491
    :catch_3
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    .line 492
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 496
    if-eqz v0, :cond_2

    .line 497
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 502
    :catch_4
    move-exception v0

    goto :goto_4

    .line 499
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    .line 500
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 502
    :cond_3
    :goto_4
    nop

    .line 503
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    .line 504
    nop

    .line 506
    return-object v1

    .line 495
    :catchall_2
    move-exception v1

    move-object v2, v0

    .line 496
    :goto_5
    if-eqz v2, :cond_4

    .line 497
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 502
    :catch_5
    move-exception v0

    goto :goto_7

    .line 499
    :cond_4
    :goto_6
    if-eqz v3, :cond_5

    .line 500
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 502
    :cond_5
    :goto_7
    nop

    .line 503
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v1

    :goto_9
    goto :goto_8
.end method


# virtual methods
.method public createDBByProcess(Ljava/lang/String;)V
    .locals 1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    .line 105
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    :goto_0
    return-void
.end method

.method public deleteEventDatas(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/umeng/analytics/process/UMProcessDBHelper$a;",
            ">;)V"
        }
    .end annotation

    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 309
    return-void

    .line 311
    :cond_0
    nop

    .line 312
    nop

    .line 314
    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 316
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 317
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 318
    if-eqz p3, :cond_1

    if-lez v1, :cond_1

    .line 319
    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_2

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from __et_p where rowid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;

    iget v3, v3, Lcom/umeng/analytics/process/UMProcessDBHelper$a;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 319
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 324
    :cond_1
    const-string p3, "__et_p"

    invoke-virtual {v0, p3, p2, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 327
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    if-eqz v0, :cond_4

    .line 332
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    .line 331
    :catchall_0
    move-exception p2

    goto :goto_1

    .line 328
    :catch_0
    move-exception p2

    move-object p2, v0

    goto :goto_2

    .line 331
    :catchall_1
    move-exception p3

    move-object v0, p2

    move-object p2, p3

    :goto_1
    if-eqz v0, :cond_3

    .line 332
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 334
    :cond_3
    iget-object p3, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    throw p2

    .line 328
    :catch_1
    move-exception p3

    .line 331
    :goto_2
    if-eqz p2, :cond_4

    .line 332
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 334
    :cond_4
    :goto_3
    iget-object p2, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    .line 335
    nop

    .line 336
    return-void
.end method

.method public deleteMainProcessEventDatasByIds(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 288
    const-string v0, "_main_"

    .line 290
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 292
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 293
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 294
    const-string v3, "__et_p"

    const-string v4, "id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 295
    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    if-eqz v1, :cond_2

    .line 300
    goto :goto_1

    .line 299
    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    .line 300
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    throw p1

    .line 297
    :catch_0
    move-exception p1

    .line 299
    if-eqz v1, :cond_2

    .line 300
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 302
    :cond_2
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    .line 303
    nop

    .line 304
    return-void
.end method

.method public insertEvents(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    .line 137
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->SUB_PROCESS_EVENT:Z

    if-nez v0, :cond_0

    .line 138
    return-void

    .line 141
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    return-void

    .line 145
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->datasAdapter(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->insertEvents_(Ljava/lang/String;Ljava/util/List;)Z

    .line 146
    return-void
.end method

.method public insertEventsInSubProcess(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2

    .line 112
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->SUB_PROCESS_EVENT:Z

    if-nez v0, :cond_0

    .line 113
    return-void

    .line 116
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/umeng/analytics/process/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mFileLock:Lcom/umeng/commonsdk/utils/FileLockUtil;

    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->ekvCallBack:Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;

    invoke-virtual {p1, v1, v0, p2}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    :cond_2
    check-cast p2, Lorg/json/JSONArray;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->insertEvents(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 129
    :goto_0
    return-void
.end method

.method public processDBToMain()V
    .locals 3

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/umeng/analytics/process/UMProcessDBHelper$ProcessToMainCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/umeng/analytics/process/UMProcessDBHelper$ProcessToMainCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;Lcom/umeng/analytics/process/UMProcessDBHelper$1;)V

    new-instance v2, Lcom/umeng/analytics/process/UMProcessDBHelper$1;

    invoke-direct {v2, p0}, Lcom/umeng/analytics/process/UMProcessDBHelper$1;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;)V

    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/process/DBFileTraversalUtil;->traverseDBFiles(Ljava/lang/String;Lcom/umeng/commonsdk/utils/FileLockCallback;Lcom/umeng/analytics/process/DBFileTraversalUtil$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 579
    return-void
.end method

.method public readMainEvents(JLjava/util/List;)Lorg/json/JSONObject;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 177
    move-object/from16 v1, p0

    const-string v0, "pn"

    const-string v2, "_main_"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 178
    nop

    .line 179
    nop

    .line 180
    nop

    .line 182
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, v1, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    :try_start_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 185
    const-string v6, "select *  from __et_p"

    .line 187
    invoke-virtual {v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 188
    if-eqz v4, :cond_c

    .line 190
    nop

    .line 192
    nop

    .line 194
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const-string v7, ""

    .line 196
    :goto_0
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 197
    const-string v8, "id"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 198
    const-string v9, "__t"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 199
    const-string v10, "__i"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 200
    const-string v11, "__s"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 201
    const-string v12, "__pn"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 202
    const-string v13, "__av"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 203
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 204
    goto :goto_0

    .line 207
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 208
    move-object v7, v13

    .line 213
    :cond_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    const/16 v14, 0x801

    if-ne v9, v14, :cond_7

    .line 214
    new-instance v9, Lorg/json/JSONObject;

    invoke-static {}, Lcom/umeng/analytics/pro/w;->a()Lcom/umeng/analytics/pro/w;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/umeng/analytics/pro/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 216
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "unknown"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 217
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 218
    invoke-virtual {v9, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    :cond_3
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 221
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    goto :goto_1

    .line 223
    :cond_4
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 225
    :goto_1
    invoke-static {v11}, Lcom/umeng/analytics/pro/m;->a(Lorg/json/JSONArray;)J

    move-result-wide v14

    .line 226
    invoke-static {v9}, Lcom/umeng/analytics/pro/m;->a(Lorg/json/JSONObject;)J

    move-result-wide v16

    .line 228
    add-long v16, v16, v14

    cmp-long v12, v16, p1

    if-lez v12, :cond_5

    .line 229
    goto :goto_3

    .line 233
    :cond_5
    invoke-virtual {v7, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 234
    goto :goto_3

    .line 236
    :cond_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v12, p3

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 239
    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 213
    :cond_7
    move-object/from16 v12, p3

    .line 241
    :goto_2
    goto/16 :goto_0

    .line 243
    :cond_8
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 244
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 245
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 247
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 248
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 249
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 250
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 251
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-lez v9, :cond_9

    .line 253
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 255
    :cond_9
    goto :goto_4

    .line 256
    :cond_a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_b

    .line 257
    const-string v6, "ekv"

    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    :cond_b
    nop

    .line 261
    nop

    .line 264
    :cond_c
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 268
    if-eqz v4, :cond_d

    .line 269
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_d
    if-eqz v5, :cond_f

    .line 273
    :try_start_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 275
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 265
    :catch_0
    move-exception v0

    goto :goto_5

    .line 268
    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v5, v4

    goto :goto_7

    .line 265
    :catch_1
    move-exception v0

    move-object v5, v4

    .line 266
    :goto_5
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 268
    if-eqz v4, :cond_e

    .line 269
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_e
    if-eqz v5, :cond_f

    .line 273
    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    .line 275
    :catchall_2
    move-exception v0

    :cond_f
    :goto_6
    nop

    .line 276
    iget-object v0, v1, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    .line 277
    nop

    .line 281
    return-object v3

    .line 268
    :catchall_3
    move-exception v0

    move-object v3, v0

    :goto_7
    if-eqz v4, :cond_10

    .line 269
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 272
    :cond_10
    if-eqz v5, :cond_11

    .line 273
    :try_start_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_8

    .line 275
    :catchall_4
    move-exception v0

    :cond_11
    :goto_8
    nop

    .line 276
    iget-object v0, v1, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v3

    :goto_a
    goto :goto_9
.end method

.method public readVersionInfoFromColumId(Ljava/lang/Integer;)Lorg/json/JSONObject;
    .locals 8

    .line 420
    const-string v0, "__vc"

    const-string v1, "__av"

    const-string v2, "_main_"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select *  from __et_p where rowid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 422
    nop

    .line 423
    nop

    .line 424
    nop

    .line 427
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/umeng/analytics/process/c;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 429
    :try_start_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 430
    invoke-virtual {v4, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 431
    if-eqz p1, :cond_2

    .line 432
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 433
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 434
    :try_start_3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 435
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 436
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 437
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 440
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 451
    :cond_1
    move-object v3, v5

    goto :goto_1

    .line 446
    :catch_0
    move-exception v0

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    move-object v3, p1

    goto :goto_8

    .line 446
    :catch_1
    move-exception v0

    move-object v5, v3

    :goto_0
    move-object v3, p1

    goto :goto_4

    .line 451
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 452
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 457
    :catch_2
    move-exception p1

    goto :goto_3

    .line 454
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 455
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 457
    :cond_4
    :goto_3
    nop

    .line 458
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    .line 459
    goto :goto_7

    .line 446
    :catch_3
    move-exception v0

    move-object v5, v3

    goto :goto_4

    .line 450
    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_8

    .line 446
    :catch_4
    move-exception v0

    move-object v4, v3

    move-object v5, v4

    .line 447
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 451
    if-eqz v3, :cond_5

    .line 452
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 457
    :catch_5
    move-exception p1

    goto :goto_6

    .line 454
    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 455
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 457
    :cond_6
    :goto_6
    nop

    .line 458
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    .line 459
    move-object v3, v5

    .line 461
    :goto_7
    return-object v3

    .line 450
    :catchall_2
    move-exception v0

    .line 451
    :goto_8
    if-eqz v3, :cond_7

    .line 452
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 457
    :catch_6
    move-exception p1

    goto :goto_a

    .line 454
    :cond_7
    :goto_9
    if-eqz v4, :cond_8

    .line 455
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 457
    :cond_8
    :goto_a
    nop

    .line 458
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/analytics/process/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/umeng/analytics/process/c;->b(Ljava/lang/String;)V

    throw v0
.end method
