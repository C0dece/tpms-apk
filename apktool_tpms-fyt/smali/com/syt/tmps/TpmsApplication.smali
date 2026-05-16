.class public Lcom/syt/tmps/TpmsApplication;
.super Landroid/app/Application;
.source "TpmsApplication.java"

# interfaces
.implements Lcom/tpms/biz/INotifMsg;


# instance fields
.field public TAG:Ljava/lang/String;

.field datasrc:Lcom/std/dev/TpmsDataSrc;

.field private mAppService:Landroid/app/Service;

.field mNotificationState:I

.field mReceive:Lcom/syt/tmps/BKReceiver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field notificationManager:Landroid/app/NotificationManager;

.field private tpms:Lcom/tpms/biz/Tpms;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 64
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "difengze.com-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/syt/tmps/TpmsApplication;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syt/tmps/TpmsApplication;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syt/tmps/TpmsApplication;->datasrc:Lcom/std/dev/TpmsDataSrc;

    .line 47
    iput-object v0, p0, Lcom/syt/tmps/TpmsApplication;->mReceive:Lcom/syt/tmps/BKReceiver;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/syt/tmps/TpmsApplication;->mNotificationState:I

    .line 174
    new-instance v0, Lcom/syt/tmps/TpmsApplication$1;

    invoke-direct {v0, p0}, Lcom/syt/tmps/TpmsApplication$1;-><init>(Lcom/syt/tmps/TpmsApplication;)V

    iput-object v0, p0, Lcom/syt/tmps/TpmsApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iget-object v0, p0, Lcom/syt/tmps/TpmsApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BTApplication tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private static getProcessName(I)Ljava/lang/String;
    .locals 5
    .param p0, "pid"    # I

    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/cmdline"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 219
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "processName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 223
    :cond_0
    nop

    .line 228
    nop

    .line 229
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    goto :goto_0

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, "exception":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 223
    .end local v2    # "exception":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 224
    .end local v1    # "processName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 225
    .local v1, "throwable":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 228
    .end local v1    # "throwable":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 229
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 231
    :catch_1
    move-exception v1

    .line 232
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 234
    .end local v1    # "exception":Ljava/io/IOException;
    goto :goto_2

    .line 233
    :cond_1
    :goto_1
    nop

    .line 235
    :goto_2
    const/4 v1, 0x0

    return-object v1

    .line 227
    :catchall_1
    move-exception v1

    .line 228
    if-eqz v0, :cond_2

    .line 229
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 231
    :catch_2
    move-exception v2

    .line 232
    .restart local v2    # "exception":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 233
    .end local v2    # "exception":Ljava/io/IOException;
    :cond_2
    :goto_3
    nop

    .line 234
    :goto_4
    throw v1
.end method

.method private initBugly()V
    .locals 7

    .line 134
    invoke-virtual {p0}, Lcom/syt/tmps/TpmsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 136
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Lcom/syt/tmps/TpmsApplication;->getProcessName(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "processName":Ljava/lang/String;
    new-instance v3, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    invoke-direct {v3, v0}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;-><init>(Landroid/content/Context;)V

    .line 141
    .local v3, "strategy":Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v3, v5}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setUploadProcess(Z)Lcom/tencent/bugly/BuglyStrategy;

    .line 142
    const-string v5, "public"

    invoke-virtual {v3, v5}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setAppChannel(Ljava/lang/String;)Lcom/tencent/bugly/BuglyStrategy;

    .line 144
    invoke-virtual {p0}, Lcom/syt/tmps/TpmsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "693e3499ab"

    invoke-static {v5, v6, v4, v3}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/crashreport/CrashReport$UserStrategy;)V

    .line 147
    return-void
.end method

.method private isMainPid()Z
    .locals 3

    .line 152
    invoke-virtual {p0}, Lcom/syt/tmps/TpmsApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Lcom/syt/tmps/TpmsApplication;->getProcessName(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "processName":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method


# virtual methods
.method public attachService(Landroid/app/Service;)V
    .locals 0
    .param p1, "service"    # Landroid/app/Service;

    .line 57
    iput-object p1, p0, Lcom/syt/tmps/TpmsApplication;->mAppService:Landroid/app/Service;

    .line 58
    return-void
.end method

.method public getDataSrc()Lcom/std/dev/TpmsDataSrc;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/syt/tmps/TpmsApplication;->datasrc:Lcom/std/dev/TpmsDataSrc;

    return-object v0
.end method

.method public getTpmsServices()Landroid/app/Service;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/syt/tmps/TpmsApplication;->mAppService:Landroid/app/Service;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .line 77
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 81
    invoke-direct {p0}, Lcom/syt/tmps/TpmsApplication;->isMainPid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/syt/tmps/TpmsApplication;->TAG:Ljava/lang/String;

    const-string v1, "onCreate is two process"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/syt/tmps/TpmsApplication;->TAG:Ljava/lang/String;

    const-string v1, "onCreate is one process"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {p0}, Lcom/tpms/utils/Log;->init(Landroid/content/Context;)V

    .line 93
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tpms/utils/Log;->setLogToFile(Z)V

    .line 94
    iget-object v1, p0, Lcom/syt/tmps/TpmsApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App is onCreate tid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "693e3499ab"

    invoke-static {p0, v1, v0}, Lcom/tencent/bugly/Bugly;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 98
    invoke-direct {p0}, Lcom/syt/tmps/TpmsApplication;->initBugly()V

    .line 101
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "5e145d030cafb240a50000a2"

    const-string v3, "public"

    invoke-static {p0, v2, v3, v0, v1}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->setPageCollectionMode(Lcom/umeng/analytics/MobclickAgent$PageMode;)V

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/syt/tmps/TpmsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/syt/tmps/TpmsApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 111
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/syt/tmps/TpmsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/syt/tmps/TpmsApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 119
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/syt/tmps/TpmsApplication;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/syt/tmps/TpmsApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    iput-object v1, p0, Lcom/syt/tmps/TpmsApplication;->tpms:Lcom/tpms/biz/Tpms;

    .line 129
    invoke-virtual {v1, p0, p0}, Lcom/tpms/biz/Tpms;->initSrc(Landroid/content/Context;Lcom/tpms/biz/INotifMsg;)V

    .line 130
    iget-object v1, p0, Lcom/syt/tmps/TpmsApplication;->tpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->startTpms()V

    .line 132
    return-void
.end method

.method public onTerminate()V
    .locals 4

    .line 161
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 162
    iget-object v0, p0, Lcom/syt/tmps/TpmsApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App is onTerminate tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public showErrorNotifMsg()V
    .locals 0

    .line 248
    invoke-static {p0}, Lcom/tpms/utils/NotifBar;->showErrorNotifMsg(Landroid/content/Context;)V

    .line 249
    return-void
.end method

.method public showNormalNotifMsg()V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/syt/tmps/TpmsApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showNormalNotifMsg mNotificationState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/syt/tmps/TpmsApplication;->mNotificationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {p0}, Lcom/tpms/utils/NotifBar;->showNormalNotif(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/syt/tmps/TpmsApplication$2;

    invoke-direct {v1, p0}, Lcom/syt/tmps/TpmsApplication$2;-><init>(Lcom/syt/tmps/TpmsApplication;)V

    const-wide/16 v2, 0xBB8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    return-void
.end method
