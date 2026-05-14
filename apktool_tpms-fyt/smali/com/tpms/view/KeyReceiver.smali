.class public Lcom/tpms/view/KeyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KeyReceiver.java"


# static fields
.field private static final BOOT_COMPLATE:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"


# instance fields
.field Util:Lcom/tpms/utils/Util;

.field private aux_acc:Z

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mScaFb:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tpms/view/KeyReceiver;->aux_acc:Z

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/view/KeyReceiver;->Util:Lcom/tpms/utils/Util;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/tpms/view/KeyReceiver;->mScaFb:I

    return-void
.end method

.method private delayMs(I)V
    .locals 2
    .param p1, "ms"    # I

    .line 73
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 77
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method private getPreferenceValue(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    const-string v0, "aux_pref"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tpms/view/KeyReceiver;->mPreferences:Landroid/content/SharedPreferences;

    .line 60
    const-string v1, "aux_goplay"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tpms/view/KeyReceiver;->aux_acc:Z

    .line 62
    return-void
.end method

.method private savePreferenceValue(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    const-string v0, "aux_pref"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tpms/view/KeyReceiver;->mPreferences:Landroid/content/SharedPreferences;

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "aux_goplay"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "abcString":Ljava/lang/String;
    new-instance v1, Lcom/tpms/utils/Util;

    invoke-direct {v1}, Lcom/tpms/utils/Util;-><init>()V

    iput-object v1, p0, Lcom/tpms/view/KeyReceiver;->Util:Lcom/tpms/utils/Util;

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "======AUX\u6536\u5230\u5f00\u673a\u5e7f\u64ad"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/tpms/view/KeyReceiver;->getPreferenceValue(Landroid/content/Context;)V

    .line 30
    iget-boolean v1, p0, Lcom/tpms/view/KeyReceiver;->aux_acc:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 31
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "=====true \u65ad\u7535\u65f6\u5728\u64ad\u653e"

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    const/4 v1, -0x1

    const-string v3, "aux_pref"

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "LaunchAccOff"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 44
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    invoke-direct {p0, p1}, Lcom/tpms/view/KeyReceiver;->savePreferenceValue(Landroid/content/Context;)V

    .line 52
    .end local v1    # "am":Landroid/app/ActivityManager;
    goto :goto_0

    .line 53
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "======\u65ad\u7535\u65f6AUX\u6ca1\u6709\u64ad\u653e\uff01\uff01\uff01"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    :cond_1
    :goto_0
    return-void
.end method
