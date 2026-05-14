.class public Lcom/syt/tmps/TpmsService;
.super Landroid/app/Service;
.source "TpmsService.java"


# static fields
.field private static final NOTIFI_CLICK_ACTION:Ljava/lang/String; = "com.syt.tpms.action.NOTIFI_CLICK_ACTION"

.field private static final SERVICE_NOTIFICATION_ID:I = 0x70

.field private static final TAG:Ljava/lang/String; = "TpmsService"


# instance fields
.field getCurentWindow:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    new-instance v0, Lcom/syt/tmps/TpmsService$1;

    invoke-direct {v0, p0}, Lcom/syt/tmps/TpmsService$1;-><init>(Lcom/syt/tmps/TpmsService;)V

    iput-object v0, p0, Lcom/syt/tmps/TpmsService;->getCurentWindow:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .line 109
    const-string v0, "TpmsService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 33
    const-string v0, "TpmsService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 36
    invoke-virtual {p0}, Lcom/syt/tmps/TpmsService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/syt/tmps/TpmsApplication;

    invoke-virtual {v0, p0}, Lcom/syt/tmps/TpmsApplication;->attachService(Landroid/app/Service;)V

    .line 40
    invoke-static {p0}, Lcom/tpms/utils/NotifBar;->getNormalNotif(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    .line 41
    .local v0, "notif":Landroid/app/Notification;
    if-eqz v0, :cond_0

    .line 43
    const/16 v1, 0x70

    invoke-virtual {p0, v1, v0}, Lcom/syt/tmps/TpmsService;->startForeground(ILandroid/app/Notification;)V

    .line 45
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 115
    const-string v0, "TpmsService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 118
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .line 123
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 124
    return-void
.end method
