.class public Lcom/tpms/utils/NotifBar;
.super Ljava/lang/Object;
.source "NotifBar.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mNotificationState:I

.field private static notification_id:I

.field private static show_top_dlg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-string v0, "NotifBar"

    sput-object v0, Lcom/tpms/utils/NotifBar;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, -0x1

    sput v0, Lcom/tpms/utils/NotifBar;->mNotificationState:I

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tpms/utils/NotifBar;->show_top_dlg:Z

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/tpms/utils/NotifBar;->notification_id:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getNormalNotif(Landroid/content/Context;)Landroid/app/Notification;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/tpms/utils/NotifBar;

    monitor-enter v0

    .line 180
    :try_start_0
    sget v1, Lcom/tpms/utils/NotifBar;->mNotificationState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 182
    monitor-exit v0

    return-object v2

    .line 185
    :cond_0
    :try_start_1
    const-string v1, "com.dfz.tpms"

    .line 186
    .local v1, "CHANNEL_ID":Ljava/lang/String;
    const-string v4, "tpms"

    .line 188
    .local v4, "CHANNEL_NAME":Ljava/lang/String;
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v5

    .line 189
    .local v5, "notificationManagerCompat":Landroidx/core/app/NotificationManagerCompat;
    invoke-virtual {v5}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v6

    .line 191
    .local v6, "areNotificationsEnabled":Z
    if-eqz v6, :cond_3

    .line 193
    sget-object v2, Lcom/tpms/utils/NotifBar;->TAG:Ljava/lang/String;

    const-string v7, "\u62e5\u6709\u901a\u77e5\u7684\u6743\u9650"

    invoke-static {v2, v7}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v2, v7

    .line 198
    .local v2, "id":I
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/tpms/view/TpmsMainActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v7, "clickIntent":Landroid/content/Intent;
    const/16 v8, 0x70

    const/4 v9, 0x0

    invoke-static {p0, v8, v7, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 201
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 202
    .local v10, "manager":Landroid/app/NotificationManager;
    new-instance v11, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v11, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 204
    .local v11, "builder":Landroidx/core/app/NotificationCompat$Builder;
    sget-boolean v12, Lcom/tpms/utils/NotifBar;->show_top_dlg:Z

    if-eqz v12, :cond_1

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1a

    if-lt v12, v13, :cond_1

    .line 206
    new-instance v12, Landroid/app/NotificationChannel;

    const/4 v13, 0x4

    invoke-direct {v12, v1, v4, v13}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 207
    .local v12, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v10, v12}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 208
    invoke-virtual {v11, v1}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 212
    .end local v12    # "channel":Landroid/app/NotificationChannel;
    :cond_1
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x10

    if-lt v12, v13, :cond_2

    .line 213
    new-instance v12, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v12}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    const v14, 0x7f0b0039

    invoke-virtual {p0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 217
    :cond_2
    const v12, 0x7f0b0038

    .line 218
    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    .line 220
    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    .line 221
    invoke-virtual {v12, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f050052

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    .line 223
    invoke-virtual {v12, v14}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    .line 224
    invoke-virtual {v12, v9}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 225
    invoke-virtual {v9, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 227
    sput v3, Lcom/tpms/utils/NotifBar;->mNotificationState:I

    .line 228
    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v3

    .line 231
    .end local v2    # "id":I
    .end local v7    # "clickIntent":Landroid/content/Intent;
    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v10    # "manager":Landroid/app/NotificationManager;
    .end local v11    # "builder":Landroidx/core/app/NotificationCompat$Builder;
    :cond_3
    :try_start_2
    sget-object v3, Lcom/tpms/utils/NotifBar;->TAG:Ljava/lang/String;

    const-string v7, "\u6ca1\u6709\u901a\u77e5\u7684\u6743\u9650"

    invoke-static {v3, v7}, Lcom/tpms/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    monitor-exit v0

    return-object v2

    .line 179
    .end local v1    # "CHANNEL_ID":Ljava/lang/String;
    .end local v4    # "CHANNEL_NAME":Ljava/lang/String;
    .end local v5    # "notificationManagerCompat":Landroidx/core/app/NotificationManagerCompat;
    .end local v6    # "areNotificationsEnabled":Z
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized showErrorNotifMsg(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/tpms/utils/NotifBar;

    monitor-enter v0

    .line 109
    :try_start_0
    sget v1, Lcom/tpms/utils/NotifBar;->mNotificationState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 110
    monitor-exit v0

    return-void

    .line 113
    :cond_0
    :try_start_1
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v1

    .line 115
    .local v1, "notificationManagerCompat":Landroidx/core/app/NotificationManagerCompat;
    invoke-virtual {v1}, Landroidx/core/app/NotificationManagerCompat;->cancelAll()V

    .line 116
    const-string v2, "com.dfz.tpms"

    .line 117
    .local v2, "CHANNEL_ID":Ljava/lang/String;
    const-string v3, "tpms"

    .line 121
    .local v3, "CHANNEL_NAME":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/tpms/view/TpmsMainActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v4, "clickIntent":Landroid/content/Intent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v6, v5

    .line 124
    .local v6, "id":I
    const/16 v5, 0x70

    const/4 v7, 0x0

    invoke-static {p0, v5, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 126
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 127
    .local v8, "manager":Landroid/app/NotificationManager;
    new-instance v9, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v9, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    .local v9, "builder":Landroidx/core/app/NotificationCompat$Builder;
    sget-boolean v10, Lcom/tpms/utils/NotifBar;->show_top_dlg:Z

    if-eqz v10, :cond_1

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-lt v10, v11, :cond_1

    .line 131
    new-instance v10, Landroid/app/NotificationChannel;

    const/4 v11, 0x4

    invoke-direct {v10, v2, v3, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 132
    .local v10, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v8, v10}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 133
    invoke-virtual {v9, v2}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 136
    .end local v10    # "channel":Landroid/app/NotificationChannel;
    :cond_1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-lt v10, v11, :cond_2

    .line 137
    new-instance v10, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v10}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    const v12, 0x7f0b003c

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 141
    :cond_2
    const v10, 0x7f0b0038

    .line 142
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    .line 144
    invoke-virtual {v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    const/4 v11, 0x1

    .line 145
    invoke-virtual {v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f050051

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    .line 147
    invoke-virtual {v10, v12}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    .line 148
    invoke-virtual {v10, v7}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    .line 149
    invoke-virtual {v10, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 152
    invoke-virtual {v9}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .local v10, "notification":Landroid/app/Notification;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/syt/tmps/TpmsApplication;

    .line 157
    .local v11, "app":Lcom/syt/tmps/TpmsApplication;
    invoke-virtual {v11}, Lcom/syt/tmps/TpmsApplication;->getTpmsServices()Landroid/app/Service;

    move-result-object v12

    sget v13, Lcom/tpms/utils/NotifBar;->notification_id:I

    invoke-virtual {v12, v13, v10}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    .end local v11    # "app":Lcom/syt/tmps/TpmsApplication;
    goto :goto_0

    .line 158
    :catch_0
    move-exception v11

    .line 160
    .local v11, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    .end local v11    # "e":Ljava/lang/Exception;
    :goto_0
    sput v7, Lcom/tpms/utils/NotifBar;->mNotificationState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    monitor-exit v0

    return-void

    .line 108
    .end local v1    # "notificationManagerCompat":Landroidx/core/app/NotificationManagerCompat;
    .end local v2    # "CHANNEL_ID":Ljava/lang/String;
    .end local v3    # "CHANNEL_NAME":Ljava/lang/String;
    .end local v4    # "clickIntent":Landroid/content/Intent;
    .end local v5    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v6    # "id":I
    .end local v8    # "manager":Landroid/app/NotificationManager;
    .end local v9    # "builder":Landroidx/core/app/NotificationCompat$Builder;
    .end local v10    # "notification":Landroid/app/Notification;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized showNormalNotif(Landroid/content/Context;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/tpms/utils/NotifBar;

    monitor-enter v0

    .line 42
    :try_start_0
    sget v1, Lcom/tpms/utils/NotifBar;->mNotificationState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 43
    monitor-exit v0

    return-void

    .line 45
    :cond_0
    :try_start_1
    const-string v1, "com.dfz.tpms"

    .line 46
    .local v1, "CHANNEL_ID":Ljava/lang/String;
    const-string v3, "tpms"

    .line 48
    .local v3, "CHANNEL_NAME":Ljava/lang/String;
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v4

    .line 49
    .local v4, "notificationManagerCompat":Landroidx/core/app/NotificationManagerCompat;
    invoke-virtual {v4}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v5

    .line 51
    .local v5, "areNotificationsEnabled":Z
    if-eqz v5, :cond_3

    .line 53
    sget-object v6, Lcom/tpms/utils/NotifBar;->TAG:Ljava/lang/String;

    const-string v7, "\u62e5\u6709\u901a\u77e5\u7684\u6743\u9650"

    invoke-static {v6, v7}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v7, v6

    .line 58
    .local v7, "id":I
    new-instance v6, Landroid/content/Intent;

    const-class v8, Lcom/tpms/view/TpmsMainActivity;

    invoke-direct {v6, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v6, "clickIntent":Landroid/content/Intent;
    const/16 v8, 0x70

    const/4 v9, 0x0

    invoke-static {p0, v8, v6, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 61
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 62
    .local v10, "manager":Landroid/app/NotificationManager;
    new-instance v11, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v11, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    .local v11, "builder":Landroidx/core/app/NotificationCompat$Builder;
    sget-boolean v12, Lcom/tpms/utils/NotifBar;->show_top_dlg:Z

    if-eqz v12, :cond_1

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1a

    if-lt v12, v13, :cond_1

    .line 66
    new-instance v12, Landroid/app/NotificationChannel;

    const/4 v13, 0x4

    invoke-direct {v12, v1, v3, v13}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 67
    .local v12, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v10, v12}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 68
    invoke-virtual {v11, v1}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 71
    .end local v12    # "channel":Landroid/app/NotificationChannel;
    :cond_1
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x10

    if-lt v12, v13, :cond_2

    .line 72
    new-instance v12, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v12}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    const v14, 0x7f0b0039

    invoke-virtual {p0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 76
    :cond_2
    const v12, 0x7f0b0038

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    .line 78
    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    .line 79
    invoke-virtual {v12, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f050052

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    .line 81
    invoke-virtual {v12, v14}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v12

    .line 82
    invoke-virtual {v12, v9}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 83
    invoke-virtual {v9, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 86
    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .local v9, "notification":Landroid/app/Notification;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/syt/tmps/TpmsApplication;

    .line 91
    .local v12, "app":Lcom/syt/tmps/TpmsApplication;
    invoke-virtual {v12}, Lcom/syt/tmps/TpmsApplication;->getTpmsServices()Landroid/app/Service;

    move-result-object v13

    sget v14, Lcom/tpms/utils/NotifBar;->notification_id:I

    invoke-virtual {v13, v14, v9}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .end local v12    # "app":Lcom/syt/tmps/TpmsApplication;
    goto :goto_0

    .line 92
    :catch_0
    move-exception v12

    .line 94
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    .end local v12    # "e":Ljava/lang/Exception;
    :goto_0
    sput v2, Lcom/tpms/utils/NotifBar;->mNotificationState:I

    .line 97
    .end local v6    # "clickIntent":Landroid/content/Intent;
    .end local v7    # "id":I
    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v10    # "manager":Landroid/app/NotificationManager;
    .end local v11    # "builder":Landroidx/core/app/NotificationCompat$Builder;
    goto :goto_1

    .line 98
    :cond_3
    sget-object v2, Lcom/tpms/utils/NotifBar;->TAG:Ljava/lang/String;

    const-string v6, "\u6ca1\u6709\u901a\u77e5\u7684\u6743\u9650"

    invoke-static {v2, v6}, Lcom/tpms/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    :goto_1
    monitor-exit v0

    return-void

    .line 41
    .end local v1    # "CHANNEL_ID":Ljava/lang/String;
    .end local v3    # "CHANNEL_NAME":Ljava/lang/String;
    .end local v4    # "notificationManagerCompat":Landroidx/core/app/NotificationManagerCompat;
    .end local v5    # "areNotificationsEnabled":Z
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static hideNormalNotif(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/tpms/utils/NotifBar;->mNotificationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :return

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/syt/tmps/TpmsApplication;

    invoke-virtual {v0}, Lcom/syt/tmps/TpmsApplication;->getTpmsServices()Landroid/app/Service;

    move-result-object v0

    if-eqz v0, :clear_state

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    :clear_state
    const/4 v0, -0x1

    sput v0, Lcom/tpms/utils/NotifBar;->mNotificationState:I

    :return
    return-void
.end method
