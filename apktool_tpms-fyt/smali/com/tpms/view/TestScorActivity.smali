.class public Lcom/tpms/view/TestScorActivity;
.super Landroid/app/Activity;
.source "TestScorActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field app:Lcom/syt/tmps/TpmsApplication;

.field datasrc:Lcom/std/dev/TpmsDataSrc;

.field player:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const-string v0, "MainActivity"

    iput-object v0, p0, Lcom/tpms/view/TestScorActivity;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/view/TestScorActivity;->datasrc:Lcom/std/dev/TpmsDataSrc;

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tpms/view/TestScorActivity;->player:Z

    .line 50
    iput-object v0, p0, Lcom/tpms/view/TestScorActivity;->app:Lcom/syt/tmps/TpmsApplication;

    return-void
.end method

.method private sleep()V
    .locals 2

    .line 77
    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 83
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 73
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lcom/tpms/view/TestScorActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/tpms/view/TestScorActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/syt/tmps/TpmsApplication;

    iput-object v0, p0, Lcom/tpms/view/TestScorActivity;->app:Lcom/syt/tmps/TpmsApplication;

    .line 62
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->getDatasrc()Lcom/std/dev/TpmsDataSrc;

    move-result-object v0

    iput-object v0, p0, Lcom/tpms/view/TestScorActivity;->datasrc:Lcom/std/dev/TpmsDataSrc;

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 103
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 90
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 96
    return-void
.end method
