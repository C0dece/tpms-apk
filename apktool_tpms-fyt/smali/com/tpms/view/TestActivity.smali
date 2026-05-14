.class public Lcom/tpms/view/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field app:Lcom/syt/tmps/TpmsApplication;

.field private builder:Landroid/app/Notification$Builder;

.field ctotast:Lcom/tpms/widget/ClickToast;

.field datasrc:Lcom/std/dev/TpmsDataSrc;

.field private final filterReceiver:Landroid/content/BroadcastReceiver;

.field mAudioManager:Landroid/media/AudioManager;

.field mNotificationState:I

.field mSound:Lcom/tpms/utils/SoundPoolCtrl;

.field private manager:Landroid/app/NotificationManager;

.field mdlg:Lcom/tpms/widget/CDialog;

.field notificationManager:Landroid/app/NotificationManager;

.field player:Z

.field playret:I

.field resetDlg:Lcom/tpms/widget/CDialog;

.field private soundPool:Landroid/media/SoundPool;

.field speed:F

.field tv_screen_info:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600b1
    .end annotation
.end field

.field volindex:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    const-string v0, "MainActivity"

    iput-object v0, p0, Lcom/tpms/view/TestActivity;->TAG:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/view/TestActivity;->datasrc:Lcom/std/dev/TpmsDataSrc;

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tpms/view/TestActivity;->player:Z

    .line 82
    const/4 v1, 0x0

    iput v1, p0, Lcom/tpms/view/TestActivity;->volindex:I

    .line 83
    const v2, 0x3e99999a    # 0.3f

    iput v2, p0, Lcom/tpms/view/TestActivity;->speed:F

    .line 84
    iput v1, p0, Lcom/tpms/view/TestActivity;->playret:I

    .line 85
    iput-object v0, p0, Lcom/tpms/view/TestActivity;->app:Lcom/syt/tmps/TpmsApplication;

    .line 92
    const/4 v1, -0x1

    iput v1, p0, Lcom/tpms/view/TestActivity;->mNotificationState:I

    .line 177
    new-instance v1, Lcom/tpms/view/TestActivity$1;

    invoke-direct {v1, p0}, Lcom/tpms/view/TestActivity$1;-><init>(Lcom/tpms/view/TestActivity;)V

    iput-object v1, p0, Lcom/tpms/view/TestActivity;->filterReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    iput-object v0, p0, Lcom/tpms/view/TestActivity;->ctotast:Lcom/tpms/widget/ClickToast;

    .line 433
    iput-object v0, p0, Lcom/tpms/view/TestActivity;->manager:Landroid/app/NotificationManager;

    .line 434
    iput-object v0, p0, Lcom/tpms/view/TestActivity;->builder:Landroid/app/Notification$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/tpms/view/TestActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tpms/view/TestActivity;

    .line 73
    invoke-direct {p0}, Lcom/tpms/view/TestActivity;->showTimeDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/tpms/view/TestActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tpms/view/TestActivity;

    .line 73
    iget-object v0, p0, Lcom/tpms/view/TestActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private nofitf1()V
    .locals 5

    .line 492
    move-object v0, p0

    .line 493
    .local v0, "context":Landroid/content/Context;
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/tpms/view/TestActivity;->manager:Landroid/app/NotificationManager;

    .line 494
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tpms/view/TestActivity;->builder:Landroid/app/Notification$Builder;

    .line 495
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 496
    const v3, 0x7f050052

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 497
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 498
    const-string v3, "\u81ea\u5b9a\u4e49\u6807\u9898"

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 499
    const-string v3, "\u81ea\u5b9a\u4e49\u5185\u5bb9"

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 500
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 501
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 511
    iget-object v1, p0, Lcom/tpms/view/TestActivity;->manager:Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/tpms/view/TestActivity;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 512
    return-void
.end method

.method private nofitf2()V
    .locals 12

    .line 442
    move-object v0, p0

    .line 444
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    .line 445
    .local v1, "notificationManagerCompat":Landroidx/core/app/NotificationManagerCompat;
    invoke-virtual {v1}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v2

    .line 447
    .local v2, "areNotificationsEnabled":Z
    if-eqz v2, :cond_2

    .line 449
    iget-object v3, p0, Lcom/tpms/view/TestActivity;->TAG:Ljava/lang/String;

    const-string v4, "\u62e5\u6709\u901a\u77e5\u7684\u6743\u9650"

    invoke-static {v3, v4}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 452
    .local v3, "clickIntent":Landroid/content/Intent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v5, v4

    .line 453
    .local v5, "id":I
    const-string v4, "com.tpms.view.tpmsmain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 456
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const-string v6, "notification"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 457
    .local v6, "manager":Landroid/app/NotificationManager;
    new-instance v7, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v7, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 459
    .local v7, "builder":Landroidx/core/app/NotificationCompat$Builder;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-lt v8, v9, :cond_0

    .line 460
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "channelId"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 461
    .local v8, "channelId":Ljava/lang/String;
    new-instance v9, Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-direct {v9, v8, v10, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 462
    .local v9, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v6, v9}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 463
    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 466
    .end local v8    # "channelId":Ljava/lang/String;
    .end local v9    # "channel":Landroid/app/NotificationChannel;
    :cond_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_1

    .line 467
    new-instance v8, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    const-string v10, "\u4e0d\u666e\u901a\u7684\u5185\u5bb9\uff0c\u4e0d\u666e\u901a\u7684\u5185\u5bb9\uff0c\u4e0d\u666e\u901a\u7684\u5185\u5bb9\uff0c\u4e0d\u666e\u901a\u7684\u5185\u5bb9\uff0c\u4e0d\u666e\u901a\u7684\u5185\u5bb9\uff0c"

    invoke-virtual {v8, v10}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 472
    :cond_1
    nop

    .line 473
    const-string v8, "\u8fd9\u4e2a\u662f\u4e2aPT\u957f\u5ea6\u7684TITLE"

    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 475
    invoke-virtual {v8, v9}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 476
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 477
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f05004f

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 478
    invoke-virtual {v8, v11}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    const/4 v10, 0x0

    .line 479
    invoke-virtual {v8, v10}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 480
    invoke-virtual {v8, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 482
    invoke-virtual {v7}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 483
    .end local v3    # "clickIntent":Landroid/content/Intent;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "id":I
    .end local v6    # "manager":Landroid/app/NotificationManager;
    .end local v7    # "builder":Landroidx/core/app/NotificationCompat$Builder;
    goto :goto_0

    .line 484
    :cond_2
    iget-object v3, p0, Lcom/tpms/view/TestActivity;->TAG:Ljava/lang/String;

    const-string v4, "\u6ca1\u6709\u901a\u77e5\u7684\u6743\u9650"

    invoke-static {v3, v4}, Lcom/tpms/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :goto_0
    return-void
.end method

.method private showTimeDialog()V
    .locals 3

    .line 248
    invoke-virtual {p0}, Lcom/tpms/view/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f08001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 249
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/tpms/widget/CDialog;

    invoke-direct {v1, p0, v0}, Lcom/tpms/widget/CDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/tpms/view/TestActivity;->mdlg:Lcom/tpms/widget/CDialog;

    .line 250
    const v1, 0x7f0600a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 251
    .local v1, "rg":Landroid/widget/RadioGroup;
    new-instance v2, Lcom/tpms/view/TestActivity$3;

    invoke-direct {v2, p0}, Lcom/tpms/view/TestActivity$3;-><init>(Lcom/tpms/view/TestActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 262
    iget-object v2, p0, Lcom/tpms/view/TestActivity;->mdlg:Lcom/tpms/widget/CDialog;

    invoke-virtual {v2}, Lcom/tpms/widget/CDialog;->show()V

    .line 263
    return-void
.end method

.method private showTimeDialog_x()V
    .locals 6

    .line 266
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "10\u5206\u949f\u5185"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "20\u5206\u949f\u5185"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "30\u5206\u949f\u5185"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "\u7184\u706b\u524d\u4e0d\u518d\u63d0\u793a"

    aput-object v4, v1, v2

    .line 268
    .local v1, "items":[Ljava/lang/String;
    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    .line 269
    .local v0, "selected":[Z
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 270
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const-string v4, "\u6b64\u8f6e\u80ce\u76f8\u540c\u8b66\u544a\u4e0d\u518d\u63d0\u793a"

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/tpms/view/TestActivity$4;

    invoke-direct {v5, p0, v1}, Lcom/tpms/view/TestActivity$4;-><init>(Lcom/tpms/view/TestActivity;[Ljava/lang/String;)V

    .line 272
    invoke-virtual {v4, v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 278
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 281
    .local v3, "adlg":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 299
    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private sleep()V
    .locals 2

    .line 160
    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 166
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method


# virtual methods
.method public btn_click_toast(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06001a
        }
    .end annotation

    .line 230
    new-instance v0, Lcom/tpms/widget/ClickToast;

    invoke-direct {v0}, Lcom/tpms/widget/ClickToast;-><init>()V

    iput-object v0, p0, Lcom/tpms/view/TestActivity;->ctotast:Lcom/tpms/widget/ClickToast;

    .line 232
    invoke-virtual {p0}, Lcom/tpms/view/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f080005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f06004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/tpms/view/TestActivity$2;

    invoke-direct {v2, p0}, Lcom/tpms/view/TestActivity$2;-><init>(Lcom/tpms/view/TestActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v1, p0, Lcom/tpms/view/TestActivity;->ctotast:Lcom/tpms/widget/ClickToast;

    invoke-virtual {p0}, Lcom/tpms/view/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u6d4b\u8bd5"

    invoke-virtual {v1, v2, v0, v3}, Lcom/tpms/widget/ClickToast;->initToast(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/tpms/view/TestActivity;->ctotast:Lcom/tpms/widget/ClickToast;

    invoke-virtual {v1}, Lcom/tpms/widget/ClickToast;->show()V

    .line 243
    return-void
.end method

.method public btn_close_usb(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06001b
        }
    .end annotation

    .line 342
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->getDatasrc()Lcom/std/dev/TpmsDataSrc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/std/dev/TpmsDataSrc;->stop()V

    .line 343
    return-void
.end method

.method public btn_enter_apk(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06001c
        }
    .end annotation

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tpms/view/TpmsMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tpms/view/TestActivity;->startActivity(Landroid/content/Intent;)V

    .line 223
    return-void
.end method

.method public btn_error(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06001d
        }
    .end annotation

    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "aa":I
    const/4 v1, 0x1

    div-int/2addr v1, v0

    .line 431
    .local v1, "bb":I
    return-void
.end method

.method public btn_exchange_failed(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06001e
        }
    .end annotation

    .line 311
    new-instance v0, Lcom/tpms/widget/CDialog;

    const v1, 0x7f080007

    invoke-direct {v0, p0, v1}, Lcom/tpms/widget/CDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/tpms/widget/CDialog;->show()V

    .line 312
    return-void
.end method

.method public btn_exchangeing(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06001f
        }
    .end annotation

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 304
    .local v0, "time":J
    iget-object v2, p0, Lcom/tpms/view/TestActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v2, ""

    invoke-static {p0, v2}, Lcom/tpms/widget/PAlertDialog;->showDiolg(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    .line 307
    return-void
.end method

.method public btn_get_px(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060020
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/tpms/view/TestActivity;->tv_screen_info:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    return-void
.end method

.method public btn_notif_error(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060029
        }
    .end annotation

    .line 359
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->showErrorNotifMsg2()V

    .line 360
    return-void
.end method

.method public btn_notif_ok(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06002a
        }
    .end annotation

    .line 353
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->showNormalNotifMsg()V

    .line 354
    return-void
.end method

.method public btn_open_usb(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06002b
        }
    .end annotation

    .line 337
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->getDatasrc()Lcom/std/dev/TpmsDataSrc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/std/dev/TpmsDataSrc;->start()V

    .line 338
    return-void
.end method

.method public btn_play_sound(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06002f
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/tpms/view/TestActivity;->mSound:Lcom/tpms/utils/SoundPoolCtrl;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/tpms/utils/SoundPoolCtrl;->player(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public btn_reset_data(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060032
        }
    .end annotation

    .line 318
    invoke-virtual {p0}, Lcom/tpms/view/TestActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f08001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 319
    .local v0, "vi":Landroid/view/View;
    new-instance v1, Lcom/tpms/widget/CDialog;

    invoke-direct {v1, p0, v0}, Lcom/tpms/widget/CDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/tpms/view/TestActivity;->resetDlg:Lcom/tpms/widget/CDialog;

    .line 320
    invoke-virtual {v1}, Lcom/tpms/widget/CDialog;->show()V

    .line 321
    const v1, 0x7f060050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/tpms/view/TestActivity$5;

    invoke-direct {v2, p0}, Lcom/tpms/view/TestActivity$5;-><init>(Lcom/tpms/view/TestActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    return-void
.end method

.method public btn_start_data(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060037
        }
    .end annotation

    .line 423
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->startTpms()V

    .line 424
    return-void
.end method

.method public btn_stop_data(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06003a
        }
    .end annotation

    .line 418
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->stopTpms()V

    .line 419
    return-void
.end method

.method public btn_stop_sound(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06003b
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/tpms/view/TestActivity;->mSound:Lcom/tpms/utils/SoundPoolCtrl;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/tpms/utils/SoundPoolCtrl;->stop(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method public btn_time_select(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060041
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Lcom/tpms/view/TestActivity;->showTimeDialog()V

    .line 218
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060067

    if-ne v0, v1, :cond_0

    .line 147
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->shakeHand()V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060090

    if-ne v0, v1, :cond_1

    .line 149
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->querySensorID()V

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060091

    if-ne v0, v1, :cond_2

    .line 151
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->queryFrontLeft()V

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060092

    if-ne v0, v1, :cond_3

    .line 153
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->queryBackLeft()V

    .line 154
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->queryBackRight()V

    .line 156
    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/tpms/view/TestActivity;->setContentView(I)V

    .line 103
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 106
    invoke-virtual {p0}, Lcom/tpms/view/TestActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/syt/tmps/TpmsApplication;

    iput-object v0, p0, Lcom/tpms/view/TestActivity;->app:Lcom/syt/tmps/TpmsApplication;

    .line 108
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->getDatasrc()Lcom/std/dev/TpmsDataSrc;

    move-result-object v0

    iput-object v0, p0, Lcom/tpms/view/TestActivity;->datasrc:Lcom/std/dev/TpmsDataSrc;

    .line 116
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/tpms/view/TestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/tpms/view/TestActivity;->notificationManager:Landroid/app/NotificationManager;

    .line 119
    new-instance v0, Lcom/tpms/utils/SoundPoolCtrl;

    invoke-direct {v0, p0}, Lcom/tpms/utils/SoundPoolCtrl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tpms/view/TestActivity;->mSound:Lcom/tpms/utils/SoundPoolCtrl;

    .line 120
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 201
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 206
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/tpms/view/TestActivity;->finish()V

    .line 208
    invoke-virtual {p0}, Lcom/tpms/view/TestActivity;->onDestroy()V

    .line 209
    const/4 v0, 0x1

    return v0

    .line 212
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNotif1(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 437
    invoke-direct {p0}, Lcom/tpms/view/TestActivity;->nofitf2()V

    .line 438
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 173
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 194
    return-void
.end method

.method protected showErrorNotifMsg()V
    .locals 5

    .line 385
    iget-object v0, p0, Lcom/tpms/view/TestActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showErrorNotifMsg mNotificationState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tpms/view/TestActivity;->mNotificationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget v0, p0, Lcom/tpms/view/TestActivity;->mNotificationState:I

    if-nez v0, :cond_0

    .line 387
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/tpms/view/TestActivity;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 390
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f050051

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "\u80ce\u538b"

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 392
    .local v0, "notification":Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 395
    iget-object v1, p0, Lcom/tpms/view/TestActivity;->app:Lcom/syt/tmps/TpmsApplication;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tpms/view/TestActivity;->app:Lcom/syt/tmps/TpmsApplication;

    const-class v4, Lcom/tpms/view/TpmsMainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 403
    .local v1, "pendingintent":Landroid/app/PendingIntent;
    return-void
.end method

.method protected showNormalNotifMsg()V
    .locals 5

    .line 363
    iget-object v0, p0, Lcom/tpms/view/TestActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showNormalNotifMsg mNotificationState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tpms/view/TestActivity;->mNotificationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget v0, p0, Lcom/tpms/view/TestActivity;->mNotificationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 365
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/tpms/view/TestActivity;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 368
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f050052

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "\u80ce\u538b"

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 371
    .local v0, "notification":Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 382
    return-void
.end method
