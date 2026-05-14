.class public Lcom/tpms/utils/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tpms/utils/CrashHandler$MailSenderInfo;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/tpms/utils/CrashHandler; = null

.field public static final TAG:Ljava/lang/String; = "CrashHandler"

.field private static s_td:Ljava/lang/Thread;


# instance fields
.field private formatter:Ljava/text/DateFormat;

.field private infos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field mailInfo:Lcom/tpms/utils/CrashHandler$MailSenderInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/tpms/utils/CrashHandler;

    invoke-direct {v0}, Lcom/tpms/utils/CrashHandler;-><init>()V

    sput-object v0, Lcom/tpms/utils/CrashHandler;->INSTANCE:Lcom/tpms/utils/CrashHandler;

    .line 329
    const/4 v0, 0x0

    sput-object v0, Lcom/tpms/utils/CrashHandler;->s_td:Ljava/lang/Thread;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tpms/utils/CrashHandler;->infos:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tpms/utils/CrashHandler;->formatter:Ljava/text/DateFormat;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/utils/CrashHandler;->mailInfo:Lcom/tpms/utils/CrashHandler$MailSenderInfo;

    .line 74
    return-void
.end method

.method public static _sendLogToMail(Ljava/lang/String;)V
    .locals 2
    .param p0, "txtBody"    # Ljava/lang/String;

    .line 362
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tpms/utils/CrashHandler$3;

    invoke-direct {v1}, Lcom/tpms/utils/CrashHandler$3;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 386
    .local v0, "td":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 387
    return-void
.end method

.method static synthetic access$000(Lcom/tpms/utils/CrashHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tpms/utils/CrashHandler;

    .line 52
    iget-object v0, p0, Lcom/tpms/utils/CrashHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Context;

    .line 52
    invoke-static {p0, p1, p2}, Lcom/tpms/utils/CrashHandler;->logFileProcSync(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/tpms/utils/CrashHandler;
    .locals 1

    .line 78
    sget-object v0, Lcom/tpms/utils/CrashHandler;->INSTANCE:Lcom/tpms/utils/CrashHandler;

    return-object v0
.end method

.method private handleException(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 163
    if-nez p1, :cond_0

    .line 164
    const/4 v0, 0x0

    return v0

    .line 167
    :cond_0
    new-instance v0, Lcom/tpms/utils/CrashHandler$1;

    invoke-direct {v0, p0}, Lcom/tpms/utils/CrashHandler$1;-><init>(Lcom/tpms/utils/CrashHandler;)V

    .line 174
    invoke-virtual {v0}, Lcom/tpms/utils/CrashHandler$1;->start()V

    .line 176
    iget-object v0, p0, Lcom/tpms/utils/CrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tpms/utils/CrashHandler;->collectDeviceInfo(Landroid/content/Context;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/tpms/utils/CrashHandler;->saveCrashInfo2File(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log file name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CrashHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    nop

    .line 208
    const/4 v1, 0x1

    return v1
.end method

.method public static logFileProc(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "packName"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "cont"    # Landroid/content/Context;

    .line 332
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tpms/utils/CrashHandler$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/tpms/utils/CrashHandler$2;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/tpms/utils/CrashHandler;->s_td:Ljava/lang/Thread;

    .line 342
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 351
    return-void
.end method

.method private static logFileProcSync(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "cont"    # Landroid/content/Context;

    .line 302
    if-eqz p1, :cond_0

    .line 307
    const/4 v0, 0x1

    .line 308
    .local v0, "retflag":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u62a5\u9519\uff0c\n\u8bf7\u67e5\u770b\u9644\u4ef6log\u89e3\u51b3bug"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "context":Ljava/lang/String;
    :try_start_0
    const-string v2, "CrashHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logFileProc==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    goto :goto_0

    .line 314
    :catch_0
    move-exception v2

    .line 316
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 317
    const/4 v0, 0x0

    .line 319
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_0

    .line 320
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 325
    .end local v0    # "retflag":Z
    .end local v1    # "context":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/tpms/utils/DirSizeLimitUtil;

    const-string v1, ""

    invoke-virtual {p2, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v2, 0x4140000000000000L    # 2097152.0

    invoke-direct {v0, v1, v2, v3}, Lcom/tpms/utils/DirSizeLimitUtil;-><init>(Ljava/lang/String;D)V

    .line 326
    .local v0, "LimitUtil":Lcom/tpms/utils/DirSizeLimitUtil;
    invoke-virtual {v0}, Lcom/tpms/utils/DirSizeLimitUtil;->sizeProc()V

    .line 327
    return-void
.end method

.method private saveCrashInfo2File(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 17
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 251
    move-object/from16 v1, p0

    const-string v2, ""

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v0

    .line 252
    .local v3, "sb":Ljava/lang/StringBuffer;
    iget-object v0, v1, Lcom/tpms/utils/CrashHandler;->infos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 253
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 254
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 255
    .local v6, "value":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    goto :goto_0

    .line 258
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object v4, v0

    .line 259
    .local v4, "writer":Ljava/io/Writer;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v5, v0

    .line 260
    .local v5, "printWriter":Ljava/io/PrintWriter;
    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 261
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v7, v0

    .line 262
    .local v7, "cause":Ljava/lang/Throwable;
    :goto_1
    if-eqz v7, :cond_1

    .line 263
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 264
    invoke-virtual {v7}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    goto :goto_1

    .line 266
    :cond_1
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 267
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 268
    .local v8, "result":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    const-string v9, "CrashHandler"

    const-string v0, "write file in"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 273
    .local v10, "timestamp":J
    iget-object v0, v1, Lcom/tpms/utils/CrashHandler;->formatter:Ljava/text/DateFormat;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "time":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "crash-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ".log"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 280
    .local v12, "fileName":Ljava/lang/String;
    iget-object v13, v1, Lcom/tpms/utils/CrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 281
    .local v13, "path":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v14, "dir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2

    .line 283
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 285
    :cond_2
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v16, v0

    .end local v0    # "time":Ljava/lang/String;
    .local v16, "time":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v15

    .line 286
    .local v0, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/io/FileOutputStream;->write([B)V

    .line 287
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    return-object v12

    .line 290
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "timestamp":J
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v13    # "path":Ljava/lang/String;
    .end local v14    # "dir":Ljava/io/File;
    .end local v16    # "time":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "an error occured while writing file..."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    new-instance v0, Lcom/tpms/utils/DirSizeLimitUtil;

    iget-object v9, v1, Lcom/tpms/utils/CrashHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v9, 0x4140000000000000L    # 2097152.0

    invoke-direct {v0, v2, v9, v10}, Lcom/tpms/utils/DirSizeLimitUtil;-><init>(Ljava/lang/String;D)V

    .line 295
    .local v0, "LimitUtil":Lcom/tpms/utils/DirSizeLimitUtil;
    invoke-virtual {v0}, Lcom/tpms/utils/DirSizeLimitUtil;->sizeProc()V

    .line 296
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public collectDeviceInfo(Landroid/content/Context;)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;

    .line 219
    const-string v0, "CrashHandler"

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 220
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 221
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_1

    .line 222
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, "null"

    goto :goto_0

    :cond_0
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 223
    .local v4, "versionName":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, "versionCode":Ljava/lang/String;
    iget-object v6, p0, Lcom/tpms/utils/CrashHandler;->infos:Ljava/util/Map;

    const-string v7, "packageName"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v6, p0, Lcom/tpms/utils/CrashHandler;->infos:Ljava/util/Map;

    const-string v7, "versionName"

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v6, p0, Lcom/tpms/utils/CrashHandler;->infos:Ljava/util/Map;

    const-string v7, "versionCode"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "versionName":Ljava/lang/String;
    .end local v5    # "versionCode":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 228
    :catch_0
    move-exception v2

    .line 229
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "an error occured when collect package info"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    const-class v2, Landroid/os/Build;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 232
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 234
    .local v5, "field":Ljava/lang/reflect/Field;
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 235
    iget-object v6, p0, Lcom/tpms/utils/CrashHandler;->infos:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    goto :goto_3

    .line 237
    :catch_1
    move-exception v6

    .line 238
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "an error occured when collect crash info"

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 241
    :cond_2
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    iput-object p1, p0, Lcom/tpms/utils/CrashHandler;->mContext:Landroid/content/Context;

    .line 123
    new-instance v0, Lcom/tpms/utils/CrashHandler$MailSenderInfo;

    invoke-direct {v0, p0}, Lcom/tpms/utils/CrashHandler$MailSenderInfo;-><init>(Lcom/tpms/utils/CrashHandler;)V

    iput-object v0, p0, Lcom/tpms/utils/CrashHandler;->mailInfo:Lcom/tpms/utils/CrashHandler$MailSenderInfo;

    .line 126
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/tpms/utils/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 128
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 129
    return-void
.end method

.method public initDir()V
    .locals 0

    .line 90
    return-void
.end method

.method public sendLogToMail(Ljava/lang/String;)V
    .locals 0
    .param p1, "txtBody"    # Ljava/lang/String;

    .line 358
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 137
    invoke-direct {p0, p2}, Lcom/tpms/utils/CrashHandler;->handleException(Ljava/lang/Throwable;)Z

    move-result v0

    const-string v1, "CrashHandler"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tpms/utils/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "error uncaughtException 0"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/tpms/utils/CrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 143
    :cond_0
    const-wide/16 v2, 0xbb8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const-string v0, "error uncaughtException 1"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 152
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 154
    :goto_1
    return-void
.end method
