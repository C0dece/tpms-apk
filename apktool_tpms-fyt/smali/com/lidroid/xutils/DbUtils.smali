.class public Lcom/lidroid/xutils/DbUtils;
.super Ljava/lang/Object;
.source "DbUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/DbUtils$DaoConfig;,
        Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;,
        Lcom/lidroid/xutils/DbUtils$FindTempCache;
    }
.end annotation


# static fields
.field private static daoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/DbUtils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allowTransaction:Z

.field private daoConfig:Lcom/lidroid/xutils/DbUtils$DaoConfig;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private debug:Z

.field private final findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

.field private writeLock:Ljava/util/concurrent/locks/Lock;

.field private volatile writeLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/DbUtils;->daoMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/lidroid/xutils/DbUtils$DaoConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/lidroid/xutils/DbUtils$DaoConfig;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->debug:Z

    .line 51
    iput-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->allowTransaction:Z

    .line 783
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/lidroid/xutils/DbUtils;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 784
    iput-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->writeLocked:Z

    .line 853
    new-instance v0, Lcom/lidroid/xutils/DbUtils$FindTempCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/DbUtils$FindTempCache;-><init>(Lcom/lidroid/xutils/DbUtils;Lcom/lidroid/xutils/DbUtils$FindTempCache;)V

    iput-object v0, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    .line 54
    if-eqz p1, :cond_0

    .line 57
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/DbUtils;->createDatabase(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 58
    iput-object p1, p0, Lcom/lidroid/xutils/DbUtils;->daoConfig:Lcom/lidroid/xutils/DbUtils$DaoConfig;

    .line 59
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "daoConfig may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beginTransaction()V
    .locals 1

    .line 787
    iget-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->allowTransaction:Z

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 789
    goto :goto_0

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->writeLocked:Z

    .line 793
    :goto_0
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/lidroid/xutils/DbUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/lidroid/xutils/DbUtils$DaoConfig;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, "config":Lcom/lidroid/xutils/DbUtils$DaoConfig;
    invoke-static {v0}, Lcom/lidroid/xutils/DbUtils;->getInstance(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Lcom/lidroid/xutils/DbUtils;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/lidroid/xutils/DbUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbName"    # Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/lidroid/xutils/DbUtils$DaoConfig;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;-><init>(Landroid/content/Context;)V

    .line 101
    .local v0, "config":Lcom/lidroid/xutils/DbUtils$DaoConfig;
    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 102
    invoke-static {v0}, Lcom/lidroid/xutils/DbUtils;->getInstance(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Lcom/lidroid/xutils/DbUtils;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;ILcom/lidroid/xutils/DbUtils$DbUpgradeListener;)Lcom/lidroid/xutils/DbUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "dbVersion"    # I
    .param p3, "dbUpgradeListener"    # Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;

    .line 113
    new-instance v0, Lcom/lidroid/xutils/DbUtils$DaoConfig;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "config":Lcom/lidroid/xutils/DbUtils$DaoConfig;
    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p2}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbVersion(I)V

    .line 116
    invoke-virtual {v0, p3}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbUpgradeListener(Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;)V

    .line 117
    invoke-static {v0}, Lcom/lidroid/xutils/DbUtils;->getInstance(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Lcom/lidroid/xutils/DbUtils;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lidroid/xutils/DbUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbDir"    # Ljava/lang/String;
    .param p2, "dbName"    # Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/lidroid/xutils/DbUtils$DaoConfig;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;-><init>(Landroid/content/Context;)V

    .line 107
    .local v0, "config":Lcom/lidroid/xutils/DbUtils$DaoConfig;
    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbDir(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0, p2}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 109
    invoke-static {v0}, Lcom/lidroid/xutils/DbUtils;->getInstance(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Lcom/lidroid/xutils/DbUtils;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/lidroid/xutils/DbUtils$DbUpgradeListener;)Lcom/lidroid/xutils/DbUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbDir"    # Ljava/lang/String;
    .param p2, "dbName"    # Ljava/lang/String;
    .param p3, "dbVersion"    # I
    .param p4, "dbUpgradeListener"    # Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;

    .line 121
    new-instance v0, Lcom/lidroid/xutils/DbUtils$DaoConfig;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;-><init>(Landroid/content/Context;)V

    .line 122
    .local v0, "config":Lcom/lidroid/xutils/DbUtils$DaoConfig;
    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbDir(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p2}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p3}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbVersion(I)V

    .line 125
    invoke-virtual {v0, p4}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbUpgradeListener(Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;)V

    .line 126
    invoke-static {v0}, Lcom/lidroid/xutils/DbUtils;->getInstance(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Lcom/lidroid/xutils/DbUtils;

    move-result-object v1

    return-object v1
.end method

.method public static create(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Lcom/lidroid/xutils/DbUtils;
    .locals 1
    .param p0, "daoConfig"    # Lcom/lidroid/xutils/DbUtils$DaoConfig;

    .line 130
    invoke-static {p0}, Lcom/lidroid/xutils/DbUtils;->getInstance(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Lcom/lidroid/xutils/DbUtils;

    move-result-object v0

    return-object v0
.end method

.method private createDatabase(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 6
    .param p1, "config"    # Lcom/lidroid/xutils/DbUtils$DaoConfig;

    .line 635
    const/4 v0, 0x0

    .line 637
    .local v0, "result":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbDir()Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, "dbDir":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 639
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 640
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 641
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .local v4, "dbFile":Ljava/io/File;
    invoke-static {v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 644
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "dbFile":Ljava/io/File;
    goto :goto_0

    .line 645
    :cond_1
    invoke-virtual {p1}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 647
    :cond_2
    :goto_0
    return-object v0
.end method

.method private debugSql(Ljava/lang/String;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .line 778
    iget-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->debug:Z

    if-eqz v0, :cond_0

    .line 779
    invoke-static {p1}, Lcom/lidroid/xutils/util/LogUtils;->d(Ljava/lang/String;)V

    .line 781
    :cond_0
    return-void
.end method

.method private endTransaction()V
    .locals 1

    .line 802
    iget-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->allowTransaction:Z

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 805
    :cond_0
    iget-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->writeLocked:Z

    if-eqz v0, :cond_1

    .line 806
    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->writeLocked:Z

    .line 809
    :cond_1
    return-void
.end method

.method private static declared-synchronized getInstance(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Lcom/lidroid/xutils/DbUtils;
    .locals 8
    .param p0, "daoConfig"    # Lcom/lidroid/xutils/DbUtils$DaoConfig;

    const-class v0, Lcom/lidroid/xutils/DbUtils;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/lidroid/xutils/DbUtils;->daoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/DbUtils;

    .line 64
    .local v1, "dao":Lcom/lidroid/xutils/DbUtils;
    if-nez v1, :cond_0

    .line 65
    new-instance v2, Lcom/lidroid/xutils/DbUtils;

    invoke-direct {v2, p0}, Lcom/lidroid/xutils/DbUtils;-><init>(Lcom/lidroid/xutils/DbUtils$DaoConfig;)V

    move-object v1, v2

    .line 66
    sget-object v2, Lcom/lidroid/xutils/DbUtils;->daoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iput-object p0, v1, Lcom/lidroid/xutils/DbUtils;->daoConfig:Lcom/lidroid/xutils/DbUtils$DaoConfig;

    .line 72
    :goto_0
    iget-object v2, v1, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 73
    .local v2, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 74
    .local v3, "oldVersion":I
    invoke-virtual {p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbVersion()I

    move-result v4

    .line 75
    .local v4, "newVersion":I
    if-eq v3, v4, :cond_3

    .line 76
    if-eqz v3, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbUpgradeListener()Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;

    move-result-object v5

    .line 78
    .local v5, "upgradeListener":Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;
    if-eqz v5, :cond_1

    .line 79
    invoke-interface {v5, v1, v3, v4}, Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;->onUpgrade(Lcom/lidroid/xutils/DbUtils;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    goto :goto_1

    .line 82
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/lidroid/xutils/DbUtils;->dropDb()V
    :try_end_1
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    goto :goto_1

    :catch_0
    move-exception v6

    .line 84
    .local v6, "e":Lcom/lidroid/xutils/exception/DbException;
    :try_start_2
    invoke-virtual {v6}, Lcom/lidroid/xutils/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v5    # "upgradeListener":Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;
    .end local v6    # "e":Lcom/lidroid/xutils/exception/DbException;
    :cond_2
    :goto_1
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :cond_3
    monitor-exit v0

    return-object v1

    .line 62
    .end local v1    # "dao":Lcom/lidroid/xutils/DbUtils;
    .end local v2    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "oldVersion":I
    .end local v4    # "newVersion":I
    .end local p0    # "daoConfig":Lcom/lidroid/xutils/DbUtils$DaoConfig;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getLastAutoIncrementId(Ljava/lang/String;)J
    .locals 5
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 686
    const-wide/16 v0, -0x1

    .line 687
    .local v0, "id":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT seq FROM sqlite_sequence WHERE name=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 688
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 690
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 691
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v3

    .line 696
    :cond_0
    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    .line 693
    :catchall_0
    move-exception v3

    .line 694
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v4, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v4, v3}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "id":J
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local p1    # "tableName":Ljava/lang/String;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 695
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v0    # "id":J
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "tableName":Ljava/lang/String;
    :catchall_1
    move-exception v3

    .line 696
    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 697
    throw v3

    .line 699
    :cond_1
    :goto_0
    return-wide v0
.end method

.method private saveBindingIdWithoutTransaction(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 666
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 667
    .local v0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, v0}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v1

    .line 668
    .local v1, "table":Lcom/lidroid/xutils/db/table/Table;
    iget-object v2, v1, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    .line 669
    .local v2, "idColumn":Lcom/lidroid/xutils/db/table/Id;
    invoke-virtual {v2}, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrement()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 670
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    .line 671
    iget-object v3, v1, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/lidroid/xutils/DbUtils;->getLastAutoIncrementId(Ljava/lang/String;)J

    move-result-wide v5

    .line 672
    .local v5, "id":J
    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    .line 673
    const/4 v3, 0x0

    return v3

    .line 675
    :cond_0
    invoke-virtual {v2, p1, v5, v6}, Lcom/lidroid/xutils/db/table/Id;->setAutoIncrementId(Ljava/lang/Object;J)V

    .line 676
    return v4

    .line 678
    .end local v5    # "id":J
    :cond_1
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    .line 679
    return v4
.end method

.method private saveOrUpdateWithoutTransaction(Ljava/lang/Object;)V
    .locals 3
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 652
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v0

    .line 653
    .local v0, "table":Lcom/lidroid/xutils/db/table/Table;
    iget-object v1, v0, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    .line 654
    .local v1, "id":Lcom/lidroid/xutils/db/table/Id;
    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrement()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 655
    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/db/table/Id;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 656
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p0, p1, v2}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;[Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    .line 657
    goto :goto_0

    .line 658
    :cond_0
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/DbUtils;->saveBindingIdWithoutTransaction(Ljava/lang/Object;)Z

    .line 660
    goto :goto_0

    .line 661
    :cond_1
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    .line 663
    :goto_0
    return-void
.end method

.method private setTransactionSuccessful()V
    .locals 1

    .line 796
    iget-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->allowTransaction:Z

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 799
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->daoConfig:Lcom/lidroid/xutils/DbUtils$DaoConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "dbName":Ljava/lang/String;
    sget-object v1, Lcom/lidroid/xutils/DbUtils;->daoMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    sget-object v1, Lcom/lidroid/xutils/DbUtils;->daoMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    iget-object v1, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 774
    :cond_0
    return-void
.end method

.method public configAllowTransaction(Z)Lcom/lidroid/xutils/DbUtils;
    .locals 0
    .param p1, "allowTransaction"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/lidroid/xutils/DbUtils;->allowTransaction:Z

    .line 140
    return-object p0
.end method

.method public configDebug(Z)Lcom/lidroid/xutils/DbUtils;
    .locals 0
    .param p1, "debug"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/lidroid/xutils/DbUtils;->debug:Z

    .line 135
    return-object p0
.end method

.method public count(Lcom/lidroid/xutils/db/sqlite/Selector;)J
    .locals 6
    .param p1, "selector"    # Lcom/lidroid/xutils/db/sqlite/Selector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 560
    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->getEntityType()Ljava/lang/Class;

    move-result-object v0

    .line 561
    .local v0, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    return-wide v1

    .line 563
    :cond_0
    invoke-static {p0, v0}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v1

    .line 564
    .local v1, "table":Lcom/lidroid/xutils/db/table/Table;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "count("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    invoke-virtual {v5}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") as count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v2}, Lcom/lidroid/xutils/db/sqlite/Selector;->select([Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;

    move-result-object v2

    .line 565
    .local v2, "dmSelector":Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/DbUtils;->findDbModelFirst(Lcom/lidroid/xutils/db/sqlite/DbModelSelector;)Lcom/lidroid/xutils/db/table/DbModel;

    move-result-object v3

    const-string v4, "count"

    invoke-virtual {v3, v4}, Lcom/lidroid/xutils/db/table/DbModel;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    return-wide v3
.end method

.method public count(Ljava/lang/Class;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 569
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->count(Lcom/lidroid/xutils/db/sqlite/Selector;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createTableIfNotExist(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 703
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildCreateTableSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    .line 705
    .local v0, "sqlInfo":Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    .line 706
    invoke-static {p1}, Lcom/lidroid/xutils/db/table/TableUtils;->getExecAfterTableCreated(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 707
    .local v1, "execAfterTableCreated":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 708
    invoke-virtual {p0, v1}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Ljava/lang/String;)V

    .line 711
    .end local v0    # "sqlInfo":Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .end local v1    # "execAfterTableCreated":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/Class;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)V
    .locals 1
    .param p2, "whereBuilder"    # Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/lidroid/xutils/db/sqlite/WhereBuilder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 300
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 302
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    .line 304
    invoke-static {p0, p1, p2}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    .line 306
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    nop

    .line 308
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 310
    return-void

    .line 307
    :catchall_0
    move-exception v0

    .line 308
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 309
    throw v0
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 287
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    .line 291
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    .line 293
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    nop

    .line 295
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 297
    return-void

    .line 294
    :catchall_0
    move-exception v0

    .line 295
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 296
    throw v0
.end method

.method public deleteAll(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 328
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lidroid/xutils/DbUtils;->delete(Ljava/lang/Class;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)V

    .line 329
    return-void
.end method

.method public deleteAll(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 313
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 315
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    .line 317
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    nop

    .line 323
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 325
    return-void

    .line 317
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 318
    .local v1, "entity":Ljava/lang/Object;
    invoke-static {p0, v1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 322
    .end local v1    # "entity":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 323
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 324
    throw v0

    .line 313
    :cond_2
    :goto_1
    return-void
.end method

.method public deleteById(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .param p2, "idValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 274
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 276
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    .line 278
    invoke-static {p0, p1, p2}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    .line 280
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    nop

    .line 282
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 284
    return-void

    .line 281
    :catchall_0
    move-exception v0

    .line 282
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 283
    throw v0
.end method

.method public dropDb()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 740
    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name<>\'sqlite_sequence\'"

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 741
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 743
    nop

    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 753
    nop

    .line 756
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_1

    .line 745
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 746
    .local v1, "tableName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DROP TABLE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Ljava/lang/String;)V

    .line 747
    invoke-static {p0, v1}, Lcom/lidroid/xutils/db/table/Table;->remove(Lcom/lidroid/xutils/DbUtils;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    .end local v1    # "tableName":Ljava/lang/String;
    goto :goto_0

    :catchall_0
    move-exception v1

    .line 749
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 753
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    .line 754
    .restart local v1    # "e":Ljava/lang/Throwable;
    :try_start_3
    new-instance v2, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v2, v1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "cursor":Landroid/database/Cursor;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 755
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v1

    .line 756
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 757
    throw v1

    .line 759
    :cond_1
    :goto_1
    return-void
.end method

.method public dropTable(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 762
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 763
    :cond_0
    invoke-static {p1}, Lcom/lidroid/xutils/db/table/TableUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "tableName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Ljava/lang/String;)V

    .line 765
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/table/Table;->remove(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)V

    .line 766
    return-void
.end method

.method public execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V
    .locals 3
    .param p1, "sqlInfo"    # Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 813
    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/DbUtils;->debugSql(Ljava/lang/String;)V

    .line 815
    :try_start_0
    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->getBindArgs()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->getBindArgsAsArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 817
    goto :goto_0

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    nop

    .line 823
    :goto_0
    return-void

    .line 820
    :catchall_0
    move-exception v0

    .line 821
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v1, v0}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execNonQuery(Ljava/lang/String;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 826
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/DbUtils;->debugSql(Ljava/lang/String;)V

    .line 828
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    nop

    .line 832
    return-void

    .line 829
    :catchall_0
    move-exception v0

    .line 830
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v1, v0}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;
    .locals 3
    .param p1, "sqlInfo"    # Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 835
    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/DbUtils;->debugSql(Ljava/lang/String;)V

    .line 837
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->getBindArgsAsStrArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 838
    :catchall_0
    move-exception v0

    .line 839
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v1, v0}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 844
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/DbUtils;->debugSql(Ljava/lang/String;)V

    .line 846
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 847
    :catchall_0
    move-exception v0

    .line 848
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v1, v0}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public findAll(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/util/List;
    .locals 8
    .param p1, "selector"    # Lcom/lidroid/xutils/db/sqlite/Selector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lidroid/xutils/db/sqlite/Selector;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 454
    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->getEntityType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 456
    :cond_0
    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "sql":Ljava/lang/String;
    invoke-static {}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence;->getSeq()J

    move-result-wide v1

    .line 458
    .local v1, "seq":J
    iget-object v3, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    invoke-virtual {v3, v1, v2}, Lcom/lidroid/xutils/DbUtils$FindTempCache;->setSeq(J)V

    .line 459
    iget-object v3, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    invoke-virtual {v3, v0}, Lcom/lidroid/xutils/DbUtils$FindTempCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 460
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 461
    move-object v4, v3

    check-cast v4, Ljava/util/List;

    return-object v4

    .line 464
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 467
    .local v5, "cursor":Landroid/database/Cursor;
    if-eqz v5, :cond_3

    .line 469
    nop

    :goto_0
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 473
    iget-object v6, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    invoke-virtual {v6, v0, v4}, Lcom/lidroid/xutils/DbUtils$FindTempCache;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    nop

    .line 477
    invoke-static {v5}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_1

    .line 470
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->getEntityType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {p0, v5, v6, v1, v2}, Lcom/lidroid/xutils/db/sqlite/CursorUtils;->getEntity(Lcom/lidroid/xutils/DbUtils;Landroid/database/Cursor;Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v6

    .line 471
    .local v6, "entity":Ljava/lang/Object;, "TT;"
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 474
    .end local v6    # "entity":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v6

    .line 475
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v7, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v7, v6}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "sql":Ljava/lang/String;
    .end local v1    # "seq":J
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local p1    # "selector":Lcom/lidroid/xutils/db/sqlite/Selector;
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 476
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v0    # "sql":Ljava/lang/String;
    .restart local v1    # "seq":J
    .restart local v3    # "obj":Ljava/lang/Object;
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v5    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "selector":Lcom/lidroid/xutils/db/sqlite/Selector;
    :catchall_1
    move-exception v6

    .line 477
    invoke-static {v5}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 478
    throw v6

    .line 480
    :cond_3
    :goto_1
    return-object v4
.end method

.method public findAll(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 484
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->findAll(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findById(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p2, "idValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 389
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 391
    :cond_0
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v0

    .line 392
    .local v0, "table":Lcom/lidroid/xutils/db/table/Table;
    invoke-static {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v2

    iget-object v3, v0, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    invoke-virtual {v3}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v2, v3, v4, p2}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v2

    .line 394
    .local v2, "selector":Lcom/lidroid/xutils/db/sqlite/Selector;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lidroid/xutils/db/sqlite/Selector;->limit(I)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lidroid/xutils/db/sqlite/Selector;->toString()Ljava/lang/String;

    move-result-object v3

    .line 395
    .local v3, "sql":Ljava/lang/String;
    invoke-static {}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence;->getSeq()J

    move-result-wide v4

    .line 396
    .local v4, "seq":J
    iget-object v6, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    invoke-virtual {v6, v4, v5}, Lcom/lidroid/xutils/DbUtils$FindTempCache;->setSeq(J)V

    .line 397
    iget-object v6, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    invoke-virtual {v6, v3}, Lcom/lidroid/xutils/DbUtils$FindTempCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 398
    .local v6, "obj":Ljava/lang/Object;
    if-eqz v6, :cond_1

    .line 399
    return-object v6

    .line 402
    :cond_1
    invoke-virtual {p0, v3}, Lcom/lidroid/xutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 403
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 405
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 406
    invoke-static {p0, v7, p1, v4, v5}, Lcom/lidroid/xutils/db/sqlite/CursorUtils;->getEntity(Lcom/lidroid/xutils/DbUtils;Landroid/database/Cursor;Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v1

    .line 407
    .local v1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v8, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    invoke-virtual {v8, v3, v1}, Lcom/lidroid/xutils/DbUtils$FindTempCache;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    nop

    .line 413
    invoke-static {v7}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 408
    return-object v1

    .line 413
    .end local v1    # "entity":Ljava/lang/Object;, "TT;"
    :cond_2
    invoke-static {v7}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    .line 410
    :catchall_0
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v8, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v8, v1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "table":Lcom/lidroid/xutils/db/table/Table;
    .end local v2    # "selector":Lcom/lidroid/xutils/db/sqlite/Selector;
    .end local v3    # "sql":Ljava/lang/String;
    .end local v4    # "seq":J
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local p1    # "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p2    # "idValue":Ljava/lang/Object;
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 412
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "table":Lcom/lidroid/xutils/db/table/Table;
    .restart local v2    # "selector":Lcom/lidroid/xutils/db/sqlite/Selector;
    .restart local v3    # "sql":Ljava/lang/String;
    .restart local v4    # "seq":J
    .restart local v6    # "obj":Ljava/lang/Object;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p2    # "idValue":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    .line 413
    invoke-static {v7}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 414
    throw v1

    .line 416
    :cond_3
    :goto_0
    return-object v1
.end method

.method public findDbModelAll(Lcom/lidroid/xutils/db/sqlite/DbModelSelector;)Ljava/util/List;
    .locals 4
    .param p1, "selector"    # Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/db/sqlite/DbModelSelector;",
            ")",
            "Ljava/util/List<",
            "Lcom/lidroid/xutils/db/table/DbModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 540
    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->getEntityType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 542
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v0, "dbModelList":Ljava/util/List;, "Ljava/util/List<Lcom/lidroid/xutils/db/table/DbModel;>;"
    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lidroid/xutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 545
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 547
    nop

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 550
    nop

    .line 553
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_1

    .line 548
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/lidroid/xutils/db/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lcom/lidroid/xutils/db/table/DbModel;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 550
    :catchall_0
    move-exception v2

    .line 551
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v3, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v3, v2}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "dbModelList":Ljava/util/List;, "Ljava/util/List<Lcom/lidroid/xutils/db/table/DbModel;>;"
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local p1    # "selector":Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 552
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "dbModelList":Ljava/util/List;, "Ljava/util/List<Lcom/lidroid/xutils/db/table/DbModel;>;"
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "selector":Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    :catchall_1
    move-exception v2

    .line 553
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 554
    throw v2

    .line 556
    :cond_2
    :goto_1
    return-object v0
.end method

.method public findDbModelAll(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)Ljava/util/List;
    .locals 4
    .param p1, "sqlInfo"    # Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/db/sqlite/SqlInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/lidroid/xutils/db/table/DbModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v0, "dbModelList":Ljava/util/List;, "Ljava/util/List<Lcom/lidroid/xutils/db/table/DbModel;>;"
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->execQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;

    move-result-object v1

    .line 525
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 527
    nop

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 530
    nop

    .line 533
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_1

    .line 528
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/lidroid/xutils/db/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lcom/lidroid/xutils/db/table/DbModel;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 530
    :catchall_0
    move-exception v2

    .line 531
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v3, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v3, v2}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "dbModelList":Ljava/util/List;, "Ljava/util/List<Lcom/lidroid/xutils/db/table/DbModel;>;"
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local p1    # "sqlInfo":Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 532
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "dbModelList":Ljava/util/List;, "Ljava/util/List<Lcom/lidroid/xutils/db/table/DbModel;>;"
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "sqlInfo":Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    :catchall_1
    move-exception v2

    .line 533
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 534
    throw v2

    .line 536
    :cond_1
    :goto_1
    return-object v0
.end method

.method public findDbModelFirst(Lcom/lidroid/xutils/db/sqlite/DbModelSelector;)Lcom/lidroid/xutils/db/table/DbModel;
    .locals 3
    .param p1, "selector"    # Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 504
    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->getEntityType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 506
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->limit(I)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 507
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 509
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    invoke-static {v0}, Lcom/lidroid/xutils/db/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lcom/lidroid/xutils/db/table/DbModel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 510
    return-object v1

    .line 515
    :cond_1
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    .line 512
    :catchall_0
    move-exception v1

    .line 513
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v2, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v2, v1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local p1    # "selector":Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 514
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "selector":Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    :catchall_1
    move-exception v1

    .line 515
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 516
    throw v1

    .line 518
    :cond_2
    :goto_0
    return-object v1
.end method

.method public findDbModelFirst(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)Lcom/lidroid/xutils/db/table/DbModel;
    .locals 3
    .param p1, "sqlInfo"    # Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 488
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->execQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;

    move-result-object v0

    .line 489
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 491
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    invoke-static {v0}, Lcom/lidroid/xutils/db/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lcom/lidroid/xutils/db/table/DbModel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 492
    return-object v1

    .line 497
    :cond_0
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    .line 494
    :catchall_0
    move-exception v1

    .line 495
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v2, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v2, v1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local p1    # "sqlInfo":Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 496
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "sqlInfo":Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    :catchall_1
    move-exception v1

    .line 497
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 498
    throw v1

    .line 500
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public findFirst(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;
    .locals 7
    .param p1, "selector"    # Lcom/lidroid/xutils/db/sqlite/Selector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lidroid/xutils/db/sqlite/Selector;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 421
    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->getEntityType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 423
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/db/sqlite/Selector;->limit(I)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/sqlite/Selector;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "sql":Ljava/lang/String;
    invoke-static {}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence;->getSeq()J

    move-result-wide v2

    .line 425
    .local v2, "seq":J
    iget-object v4, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    invoke-virtual {v4, v2, v3}, Lcom/lidroid/xutils/DbUtils$FindTempCache;->setSeq(J)V

    .line 426
    iget-object v4, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    invoke-virtual {v4, v0}, Lcom/lidroid/xutils/DbUtils$FindTempCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 427
    .local v4, "obj":Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 428
    return-object v4

    .line 431
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 432
    .local v5, "cursor":Landroid/database/Cursor;
    if-eqz v5, :cond_3

    .line 434
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 435
    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->getEntityType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v5, v1, v2, v3}, Lcom/lidroid/xutils/db/sqlite/CursorUtils;->getEntity(Lcom/lidroid/xutils/DbUtils;Landroid/database/Cursor;Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v1

    .line 436
    .local v1, "entity":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    invoke-virtual {v6, v0, v1}, Lcom/lidroid/xutils/DbUtils$FindTempCache;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    nop

    .line 442
    invoke-static {v5}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 437
    return-object v1

    .line 442
    .end local v1    # "entity":Ljava/lang/Object;, "TT;"
    :cond_2
    invoke-static {v5}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v1

    .line 440
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v6, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v6, v1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "sql":Ljava/lang/String;
    .end local v2    # "seq":J
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local p1    # "selector":Lcom/lidroid/xutils/db/sqlite/Selector;
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 441
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "sql":Ljava/lang/String;
    .restart local v2    # "seq":J
    .restart local v4    # "obj":Ljava/lang/Object;
    .restart local v5    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "selector":Lcom/lidroid/xutils/db/sqlite/Selector;
    :catchall_1
    move-exception v1

    .line 442
    invoke-static {v5}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 443
    throw v1

    .line 445
    :cond_3
    :goto_0
    return-object v1
.end method

.method public findFirst(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 449
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->findFirst(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDaoConfig()Lcom/lidroid/xutils/DbUtils$DaoConfig;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->daoConfig:Lcom/lidroid/xutils/DbUtils$DaoConfig;

    return-object v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public replace(Ljava/lang/Object;)V
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 184
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    .line 187
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    .line 189
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    nop

    .line 191
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 193
    return-void

    .line 190
    :catchall_0
    move-exception v0

    .line 191
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 192
    throw v0
.end method

.method public replaceAll(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 196
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    .line 200
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    .line 201
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    nop

    .line 207
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 209
    return-void

    .line 201
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 202
    .local v1, "entity":Ljava/lang/Object;
    invoke-static {p0, v1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 206
    .end local v1    # "entity":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 207
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 208
    throw v0

    .line 196
    :cond_2
    :goto_1
    return-void
.end method

.method public save(Ljava/lang/Object;)V
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 213
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    .line 216
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    .line 218
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    nop

    .line 220
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 222
    return-void

    .line 219
    :catchall_0
    move-exception v0

    .line 220
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 221
    throw v0
.end method

.method public saveAll(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 225
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 227
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    .line 229
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    .line 230
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    nop

    .line 236
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 238
    return-void

    .line 230
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 231
    .local v1, "entity":Ljava/lang/Object;
    invoke-static {p0, v1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 235
    .end local v1    # "entity":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 236
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 237
    throw v0

    .line 225
    :cond_2
    :goto_1
    return-void
.end method

.method public saveBindingId(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 241
    const/4 v0, 0x0

    .line 243
    .local v0, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    .line 245
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lidroid/xutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    .line 246
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/DbUtils;->saveBindingIdWithoutTransaction(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .line 248
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    nop

    .line 250
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 252
    return v0

    .line 249
    :catchall_0
    move-exception v1

    .line 250
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 251
    throw v1
.end method

.method public saveBindingIdAll(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 256
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 258
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    .line 260
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    .line 261
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    nop

    .line 269
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 271
    return-void

    .line 261
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 262
    .local v1, "entity":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/lidroid/xutils/DbUtils;->saveBindingIdWithoutTransaction(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 263
    :cond_2
    new-instance v0, Lcom/lidroid/xutils/exception/DbException;

    const-string v2, "saveBindingId error, transaction will not commit!"

    invoke-direct {v0, v2}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/String;)V

    .end local p1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    .end local v1    # "entity":Ljava/lang/Object;
    .restart local p1    # "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    :catchall_0
    move-exception v0

    .line 269
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 270
    throw v0

    .line 256
    :cond_3
    :goto_1
    return-void
.end method

.method public saveOrUpdate(Ljava/lang/Object;)V
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdateWithoutTransaction(Ljava/lang/Object;)V

    .line 160
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    nop

    .line 162
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 164
    return-void

    .line 161
    :catchall_0
    move-exception v0

    .line 162
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 163
    throw v0
.end method

.method public saveOrUpdateAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 167
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    .line 171
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    nop

    .line 178
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 180
    return-void

    .line 172
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 173
    .local v1, "entity":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdateWithoutTransaction(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    .end local v1    # "entity":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 178
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 179
    throw v0

    .line 167
    :cond_2
    :goto_1
    return-void
.end method

.method public tableIsExist(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 714
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v0

    .line 715
    .local v0, "table":Lcom/lidroid/xutils/db/table/Table;
    invoke-virtual {v0}, Lcom/lidroid/xutils/db/table/Table;->isCheckedDatabase()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 716
    return v2

    .line 719
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SELECT COUNT(*) AS c FROM sqlite_master WHERE type=\'table\' AND name=\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lidroid/xutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 720
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 722
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 723
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 724
    .local v4, "count":I
    if-lez v4, :cond_1

    .line 725
    invoke-virtual {v0, v2}, Lcom/lidroid/xutils/db/table/Table;->setCheckedDatabase(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 726
    return v2

    .line 732
    .end local v4    # "count":I
    :cond_1
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    .line 729
    :catchall_0
    move-exception v2

    .line 730
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v3, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v3, v2}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "table":Lcom/lidroid/xutils/db/table/Table;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local p1    # "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 731
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "table":Lcom/lidroid/xutils/db/table/Table;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_1
    move-exception v2

    .line 732
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    .line 733
    throw v2

    .line 736
    :cond_2
    :goto_0
    return v3
.end method

.method public varargs update(Ljava/lang/Object;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;[Ljava/lang/String;)V
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "whereBuilder"    # Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
    .param p3, "updateColumnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 345
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 347
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    .line 349
    invoke-static {p0, p1, p2, p3}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;[Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    .line 351
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    nop

    .line 353
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 355
    return-void

    .line 352
    :catchall_0
    move-exception v0

    .line 353
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 354
    throw v0
.end method

.method public varargs update(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "updateColumnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 334
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    .line 336
    invoke-static {p0, p1, p2}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;[Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    .line 338
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    nop

    .line 340
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 342
    return-void

    .line 339
    :catchall_0
    move-exception v0

    .line 340
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 341
    throw v0
.end method

.method public varargs updateAll(Ljava/util/List;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;[Ljava/lang/String;)V
    .locals 3
    .param p2, "whereBuilder"    # Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
    .param p3, "updateColumnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Lcom/lidroid/xutils/db/sqlite/WhereBuilder;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 373
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 375
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    .line 377
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 381
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    nop

    .line 383
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 385
    return-void

    .line 377
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 378
    .local v1, "entity":Ljava/lang/Object;
    invoke-static {p0, v1, p2, p3}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;[Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 382
    .end local v1    # "entity":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 383
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 384
    throw v0

    .line 373
    :cond_2
    :goto_1
    return-void
.end method

.method public varargs updateAll(Ljava/util/List;[Ljava/lang/String;)V
    .locals 3
    .param p2, "updateColumnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    .line 358
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 360
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    .line 362
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 366
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    nop

    .line 368
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 370
    return-void

    .line 362
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 363
    .local v1, "entity":Ljava/lang/Object;
    invoke-static {p0, v1, p2}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;[Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 367
    .end local v1    # "entity":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 368
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    .line 369
    throw v0

    .line 358
    :cond_2
    :goto_1
    return-void
.end method
