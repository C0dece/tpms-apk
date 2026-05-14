.class public Lcom/tpms/utils/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final DEBUG:C = 'd'

.field private static final ERROR:C = 'e'

.field private static final INFO:C = 'i'

.field private static TAG:Ljava/lang/String; = null

.field private static final VERBOSE:C = 'v'

.field private static final WARN:C = 'w'

.field static bw:Ljava/io/BufferedWriter;

.field private static date:Ljava/util/Date;

.field private static dateFormat:Ljava/text/SimpleDateFormat;

.field public static enableLog:Z

.field public static fileName:Ljava/lang/String;

.field static fos:Ljava/io/FileOutputStream;

.field private static logPath:Ljava/lang/String;

.field public static mLogFileEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    const-string v0, "LogToFile"

    sput-object v0, Lcom/tpms/utils/Log;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/tpms/utils/Log;->logPath:Ljava/lang/String;

    .line 21
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd_HH-mm-ss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/tpms/utils/Log;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 23
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sput-object v1, Lcom/tpms/utils/Log;->date:Ljava/util/Date;

    .line 25
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tpms/utils/Log;->mLogFileEnable:Z

    .line 27
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tpms/utils/Log;->enableLog:Z

    .line 30
    const-string v1, ""

    sput-object v1, Lcom/tpms/utils/Log;->fileName:Ljava/lang/String;

    .line 33
    sput-object v0, Lcom/tpms/utils/Log;->fos:Ljava/io/FileOutputStream;

    .line 34
    sput-object v0, Lcom/tpms/utils/Log;->bw:Ljava/io/BufferedWriter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLogFile()V
    .locals 4

    .line 184
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tpms/utils/Log;->logPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 188
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tpms/utils/Log;->logPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/log_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tpms/utils/Log;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tpms/utils/Log;->fileName:Ljava/lang/String;

    .line 191
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/tpms/utils/Log;->fileName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lcom/tpms/utils/Log;->fos:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    nop

    .line 197
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lcom/tpms/utils/Log;->fos:Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    sput-object v1, Lcom/tpms/utils/Log;->bw:Ljava/io/BufferedWriter;

    .line 198
    return-void

    .line 192
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 88
    sget-boolean v0, Lcom/tpms/utils/Log;->enableLog:Z

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/16 v0, 0x64

    invoke-static {v0, p0, p1}, Lcom/tpms/utils/Log;->writeToFile(CLjava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 114
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/16 v0, 0x65

    invoke-static {v0, p0, p1}, Lcom/tpms/utils/Log;->writeToFile(CLjava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private static getFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 53
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, ""

    .line 55
    .local v0, "lg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v0    # "lg":Ljava/lang/String;
    const-string v0, "2"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_1
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 97
    sget-boolean v0, Lcom/tpms/utils/Log;->enableLog:Z

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/16 v0, 0x69

    invoke-static {v0, p0, p1}, Lcom/tpms/utils/Log;->writeToFile(CLjava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/tpms/utils/Log;->getFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Logs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tpms/utils/Log;->logPath:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/tpms/utils/Log;->createLogFile()V

    .line 45
    return-void
.end method

.method public static setLogToFile(Z)V
    .locals 0
    .param p0, "LogFileEnable"    # Z

    .line 76
    sput-boolean p0, Lcom/tpms/utils/Log;->mLogFileEnable:Z

    .line 77
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 80
    sget-boolean v0, Lcom/tpms/utils/Log;->enableLog:Z

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/16 v0, 0x76

    invoke-static {v0, p0, p1}, Lcom/tpms/utils/Log;->writeToFile(CLjava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 106
    sget-boolean v0, Lcom/tpms/utils/Log;->enableLog:Z

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/16 v0, 0x77

    invoke-static {v0, p0, p1}, Lcom/tpms/utils/Log;->writeToFile(CLjava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private static declared-synchronized writeToFile(CLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "type"    # C
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    const-class v0, Lcom/tpms/utils/Log;

    monitor-enter v0

    .line 129
    :try_start_0
    sget-object v1, Lcom/tpms/utils/Log;->logPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 130
    sget-object v1, Lcom/tpms/utils/Log;->TAG:Ljava/lang/String;

    const-string v2, "logPath == null \uff0c\u672a\u521d\u59cb\u5316LogToFile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit v0

    return-void

    .line 134
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/tpms/utils/Log;->mLogFileEnable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 136
    :cond_1
    :try_start_2
    new-instance v1, Lcom/tpms/utils/DirSizeLimitUtil;

    sget-object v2, Lcom/tpms/utils/Log;->logPath:Ljava/lang/String;

    const-wide/high16 v3, 0x4140000000000000L    # 2097152.0

    invoke-direct {v1, v2, v3, v4}, Lcom/tpms/utils/DirSizeLimitUtil;-><init>(Ljava/lang/String;D)V

    .line 137
    .local v1, "limitUtil":Lcom/tpms/utils/DirSizeLimitUtil;
    invoke-virtual {v1}, Lcom/tpms/utils/DirSizeLimitUtil;->sizeProc()V

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tpms/utils/Log;->dateFormat:Ljava/text/SimpleDateFormat;

    sget-object v4, Lcom/tpms/utils/Log;->date:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "log":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/tpms/utils/Log;->logPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 145
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 148
    :cond_2
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/tpms/utils/Log;->fileName:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v4, "logFile":Ljava/io/File;
    sget-object v5, Lcom/tpms/utils/Log;->bw:Ljava/io/BufferedWriter;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/32 v9, 0x19000

    cmp-long v5, v7, v9

    if-lez v5, :cond_5

    .line 150
    :cond_3
    sget-object v5, Lcom/tpms/utils/Log;->bw:Ljava/io/BufferedWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_4

    .line 152
    :try_start_3
    sget-object v5, Lcom/tpms/utils/Log;->bw:Ljava/io/BufferedWriter;

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    goto :goto_0

    .line 153
    :catch_0
    move-exception v5

    .line 155
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    sput-object v6, Lcom/tpms/utils/Log;->bw:Ljava/io/BufferedWriter;

    .line 159
    :cond_4
    invoke-static {}, Lcom/tpms/utils/Log;->createLogFile()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    :cond_5
    :try_start_5
    sget-object v5, Lcom/tpms/utils/Log;->bw:Ljava/io/BufferedWriter;

    invoke-virtual {v5, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 166
    sget-object v5, Lcom/tpms/utils/Log;->bw:Ljava/io/BufferedWriter;

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 178
    goto :goto_1

    .line 167
    :catch_1
    move-exception v5

    .line 168
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 171
    :try_start_7
    sget-object v7, Lcom/tpms/utils/Log;->bw:Ljava/io/BufferedWriter;

    if-eqz v7, :cond_6

    .line 172
    sget-object v7, Lcom/tpms/utils/Log;->bw:Ljava/io/BufferedWriter;

    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 173
    sput-object v6, Lcom/tpms/utils/Log;->bw:Ljava/io/BufferedWriter;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 177
    :cond_6
    goto :goto_1

    .line 175
    :catch_2
    move-exception v6

    .line 176
    .local v6, "e2":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 180
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "e2":Ljava/io/IOException;
    :goto_1
    monitor-exit v0

    return-void

    .line 128
    .end local v1    # "limitUtil":Lcom/tpms/utils/DirSizeLimitUtil;
    .end local v2    # "log":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "logFile":Ljava/io/File;
    .end local p0    # "type":C
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
