.class public Lcom/tpms/view/TpmsMainActivity;
.super Landroid/app/Activity;
.source "TpmsMainActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field app:Lcom/syt/tmps/TpmsApplication;

.field back_left_betta:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060009
    .end annotation
.end field

.field back_left_connect:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f06000a
    .end annotation
.end field

.field back_left_error:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f06000b
    .end annotation
.end field

.field back_left_infos:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f06000c
    .end annotation
.end field

.field back_left_pressure:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f06000d
    .end annotation
.end field

.field back_left_temp:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f06000e
    .end annotation
.end field

.field back_right_betta:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f06000f
    .end annotation
.end field

.field back_right_connect:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060010
    .end annotation
.end field

.field back_right_error:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060011
    .end annotation
.end field

.field back_right_infos:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060012
    .end annotation
.end field

.field back_right_pressure:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060013
    .end annotation
.end field

.field back_right_temp:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060014
    .end annotation
.end field

.field datasrc:Lcom/std/dev/TpmsDataSrc;

.field private final filterReceiver:Landroid/content/BroadcastReceiver;

.field front_left_betta:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f06005b
    .end annotation
.end field

.field front_left_connect:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f06005c
    .end annotation
.end field

.field front_left_error:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f06005d
    .end annotation
.end field

.field front_left_infos:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f06005e
    .end annotation
.end field

.field front_left_pressure:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f06005f
    .end annotation
.end field

.field front_left_temp:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060060
    .end annotation
.end field

.field front_right_betta:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060061
    .end annotation
.end field

.field front_right_connect:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060062
    .end annotation
.end field

.field front_right_error:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060063
    .end annotation
.end field

.field front_right_infos:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060064
    .end annotation
.end field

.field front_right_pressure:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060065
    .end annotation
.end field

.field front_right_temp:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060066
    .end annotation
.end field

.field ll_sptires_contioner:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060077
    .end annotation
.end field

.field mBackLeft:Lcom/tpms/modle/TiresState;

.field mBackRight:Lcom/tpms/modle/TiresState;

.field mFrontLeft:Lcom/tpms/modle/TiresState;

.field mFrontRight:Lcom/tpms/modle/TiresState;

.field mPDlg:Landroid/app/AlertDialog;

.field mSpareTire:Lcom/tpms/modle/TiresState;

.field mSyncHandler:Landroid/os/Handler;

.field mSyncRunAble:Ljava/lang/Runnable;

.field mTpms:Lcom/tpms/biz/Tpms;

.field tv_sptires_betta:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600b2
    .end annotation
.end field

.field tv_sptires_error:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600b3
    .end annotation
.end field

.field tv_sptires_pressure:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600b5
    .end annotation
.end field

.field tv_sptires_temp:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600b6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const-string v0, "difengze.com-TpmsMainActivity"

    iput-object v0, p0, Lcom/tpms/view/TpmsMainActivity;->TAG:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/view/TpmsMainActivity;->datasrc:Lcom/std/dev/TpmsDataSrc;

    .line 65
    iput-object v0, p0, Lcom/tpms/view/TpmsMainActivity;->app:Lcom/syt/tmps/TpmsApplication;

    .line 294
    new-instance v0, Lcom/tpms/view/TpmsMainActivity$1;

    invoke-direct {v0, p0}, Lcom/tpms/view/TpmsMainActivity$1;-><init>(Lcom/tpms/view/TpmsMainActivity;)V

    iput-object v0, p0, Lcom/tpms/view/TpmsMainActivity;->mSyncRunAble:Ljava/lang/Runnable;

    .line 335
    new-instance v0, Lcom/tpms/view/TpmsMainActivity$2;

    invoke-direct {v0, p0}, Lcom/tpms/view/TpmsMainActivity$2;-><init>(Lcom/tpms/view/TpmsMainActivity;)V

    iput-object v0, p0, Lcom/tpms/view/TpmsMainActivity;->filterReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private updateView(Lcom/tpms/modle/TiresStateEvent;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 5
    .param p1, "tevent"    # Lcom/tpms/modle/TiresStateEvent;
    .param p2, "nerror"    # Landroid/widget/TextView;
    .param p3, "infos"    # Landroid/widget/LinearLayout;
    .param p4, "betta"    # Landroid/widget/TextView;

    .line 457
    const-string v0, ""

    .line 458
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    .line 459
    .local v1, "state":Lcom/tpms/modle/TiresState;
    const-string v2, ""

    .line 460
    .local v2, "errorKey":Ljava/lang/String;
    iget-boolean v3, v1, Lcom/tpms/modle/TiresState;->NoSignal:Z

    if-eqz v3, :cond_0

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0b000f

    invoke-virtual {p0, v4}, Lcom/tpms/view/TpmsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    const-string v2, "NoSignal"

    goto/16 :goto_0

    .line 466
    :cond_0
    iget-boolean v3, v1, Lcom/tpms/modle/TiresState;->Leakage:Z

    if-eqz v3, :cond_1

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0b0011

    invoke-virtual {p0, v4}, Lcom/tpms/view/TpmsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    const-string v2, "Leakage"

    goto/16 :goto_0

    .line 469
    :cond_1
    iget v3, v1, Lcom/tpms/modle/TiresState;->AirPressure:I

    iget-object v4, p0, Lcom/tpms/view/TpmsMainActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v4}, Lcom/tpms/biz/Tpms;->getHiPress()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 470
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0b001f

    invoke-virtual {p0, v4}, Lcom/tpms/view/TpmsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    const-string v2, "mHiPressStamp"

    goto :goto_0

    .line 472
    :cond_2
    iget v3, v1, Lcom/tpms/modle/TiresState;->AirPressure:I

    iget-object v4, p0, Lcom/tpms/view/TpmsMainActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v4}, Lcom/tpms/biz/Tpms;->getLowPress()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0b001e

    invoke-virtual {p0, v4}, Lcom/tpms/view/TpmsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    const-string v2, "mLowPressStamp"

    goto :goto_0

    .line 475
    :cond_3
    iget v3, v1, Lcom/tpms/modle/TiresState;->Temperature:I

    iget-object v4, p0, Lcom/tpms/view/TpmsMainActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v4}, Lcom/tpms/biz/Tpms;->getHiTemp()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0b002b

    invoke-virtual {p0, v4}, Lcom/tpms/view/TpmsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    const-string v2, "mHiTempStamp"

    goto :goto_0

    .line 478
    :cond_4
    iget-boolean v3, v1, Lcom/tpms/modle/TiresState;->LowPower:Z

    if-eqz v3, :cond_5

    .line 481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0b0006

    invoke-virtual {p0, v4}, Lcom/tpms/view/TpmsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    const-string v2, "LowPower"

    .line 486
    :cond_5
    :goto_0
    iget-boolean v3, v1, Lcom/tpms/modle/TiresState;->LowPower:Z

    if-eqz v3, :cond_6

    const v3, 0x7f050004

    goto :goto_1

    :cond_6
    const v3, 0x7f050003

    :goto_1
    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 488
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 489
    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->TAG:Ljava/lang/String;

    const-string v4, "\u65e0\u544a\u8b66"

    invoke-static {v3, v4}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const v3, 0x7f0b0025

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 491
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_2

    .line 494
    :cond_7
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 497
    :goto_2
    return-void
.end method


# virtual methods
.method public btn_paire_id(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06002d
        }
    .end annotation

    .line 501
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tpms/view/PaireIDActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 502
    .local v0, "inte":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tpms/view/TpmsMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 503
    return-void
.end method

.method public btn_tpms_set(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060042
        }
    .end annotation

    .line 507
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tpms/view/SetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    .local v0, "inte":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tpms/view/TpmsMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 510
    return-void
.end method

.method getPressure(I)Ljava/lang/String;
    .locals 2
    .param p1, "val"    # I

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1, p1}, Lcom/tpms/biz/Tpms;->getPressString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTempString(I)Ljava/lang/String;
    .locals 2
    .param p1, "val"    # I

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1, p1}, Lcom/tpms/biz/Tpms;->getTempString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->getWenduDanwei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 377
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 378
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 314
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Lcom/tpms/view/TpmsMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 176
    .local v0, "inte":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "act":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/tpms/view/TpmsMainActivity;->finish()V

    .line 180
    return-void

    .line 185
    .end local v1    # "act":Ljava/lang/String;
    :cond_0
    const/high16 v1, 0x7f080000

    invoke-virtual {p0, v1}, Lcom/tpms/view/TpmsMainActivity;->setContentView(I)V

    .line 186
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 187
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0}, Lcom/tpms/view/TpmsMainActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/syt/tmps/TpmsApplication;

    iput-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->app:Lcom/syt/tmps/TpmsApplication;

    .line 189
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms3;->startTpms()V

    .line 191
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    iput-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->mTpms:Lcom/tpms/biz/Tpms;

    .line 192
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms3;->getDatasrc()Lcom/std/dev/TpmsDataSrc;

    move-result-object v1

    iput-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->datasrc:Lcom/std/dev/TpmsDataSrc;

    .line 195
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->haveData()Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    const v1, 0x7f0b0035

    invoke-virtual {p0, v1}, Lcom/tpms/view/TpmsMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/tpms/widget/PAlertDialog;->showDiolg(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->mPDlg:Landroid/app/AlertDialog;

    .line 201
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->mSyncHandler:Landroid/os/Handler;

    .line 202
    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->mSyncRunAble:Ljava/lang/Runnable;

    const-wide/16 v3, 0x36b0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 206
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 207
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/tpms/view/TpmsMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 217
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->isDevCheckOk()Z

    move-result v1

    if-nez v1, :cond_3

    .line 218
    return-void

    .line 222
    :cond_3
    const-string v1, ""

    .line 224
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getFrontLeftState()Lcom/tpms/modle/TiresState;

    move-result-object v2

    iput-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->mFrontLeft:Lcom/tpms/modle/TiresState;

    .line 225
    const-string v1, "\u524d\u5de6\u8f6e"

    .line 226
    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->front_left_pressure:Landroid/widget/TextView;

    iget v2, v2, Lcom/tpms/modle/TiresState;->AirPressure:I

    invoke-virtual {p0, v2}, Lcom/tpms/view/TpmsMainActivity;->getPressure(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->front_left_error:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->mFrontLeft:Lcom/tpms/modle/TiresState;

    iget-object v3, v3, Lcom/tpms/modle/TiresState;->error:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->front_left_temp:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->mFrontLeft:Lcom/tpms/modle/TiresState;

    iget v3, v3, Lcom/tpms/modle/TiresState;->Temperature:I

    invoke-virtual {p0, v3}, Lcom/tpms/view/TpmsMainActivity;->getTempString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms3;->getFrontRightState()Lcom/tpms/modle/TiresState;

    move-result-object v2

    iput-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->mFrontRight:Lcom/tpms/modle/TiresState;

    .line 236
    const-string v1, "\u524d\u53f3\u8f6e"

    .line 237
    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->front_right_pressure:Landroid/widget/TextView;

    iget v2, v2, Lcom/tpms/modle/TiresState;->AirPressure:I

    invoke-virtual {p0, v2}, Lcom/tpms/view/TpmsMainActivity;->getPressure(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->front_right_error:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->mFrontRight:Lcom/tpms/modle/TiresState;

    iget-object v3, v3, Lcom/tpms/modle/TiresState;->error:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->front_right_temp:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->mFrontRight:Lcom/tpms/modle/TiresState;

    iget v3, v3, Lcom/tpms/modle/TiresState;->Temperature:I

    invoke-virtual {p0, v3}, Lcom/tpms/view/TpmsMainActivity;->getTempString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms3;->getBackRightState()Lcom/tpms/modle/TiresState;

    move-result-object v2

    iput-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->mBackRight:Lcom/tpms/modle/TiresState;

    .line 245
    const-string v1, "\u540e\u53f3\u8f6e"

    .line 246
    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->back_right_pressure:Landroid/widget/TextView;

    iget v2, v2, Lcom/tpms/modle/TiresState;->AirPressure:I

    invoke-virtual {p0, v2}, Lcom/tpms/view/TpmsMainActivity;->getPressure(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->back_right_error:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->mBackRight:Lcom/tpms/modle/TiresState;

    iget-object v3, v3, Lcom/tpms/modle/TiresState;->error:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->back_right_temp:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->mBackRight:Lcom/tpms/modle/TiresState;

    iget v3, v3, Lcom/tpms/modle/TiresState;->Temperature:I

    invoke-virtual {p0, v3}, Lcom/tpms/view/TpmsMainActivity;->getTempString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms3;->getBackLeftState()Lcom/tpms/modle/TiresState;

    move-result-object v2

    iput-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->mBackLeft:Lcom/tpms/modle/TiresState;

    .line 254
    const-string v1, "\u540e\u5de6\u8f6e"

    .line 255
    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->back_left_pressure:Landroid/widget/TextView;

    iget v2, v2, Lcom/tpms/modle/TiresState;->AirPressure:I

    invoke-virtual {p0, v2}, Lcom/tpms/view/TpmsMainActivity;->getPressure(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->back_left_error:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->mBackLeft:Lcom/tpms/modle/TiresState;

    iget-object v3, v3, Lcom/tpms/modle/TiresState;->error:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->back_left_temp:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->mBackLeft:Lcom/tpms/modle/TiresState;

    iget v3, v3, Lcom/tpms/modle/TiresState;->Temperature:I

    invoke-virtual {p0, v3}, Lcom/tpms/view/TpmsMainActivity;->getTempString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms3;->getSparetireEnable()Z

    move-result v2

    .line 262
    .local v2, "spret":Z
    if-eqz v2, :cond_4

    .line 263
    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->ll_sptires_contioner:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 265
    :cond_4
    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->ll_sptires_contioner:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    :goto_0
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tpms/biz/Tpms3;->getSpareTire()Lcom/tpms/modle/TiresState;

    move-result-object v3

    iput-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->mSpareTire:Lcom/tpms/modle/TiresState;

    .line 270
    const-string v1, "\u5907\u80ce"

    .line 271
    iget-object v4, p0, Lcom/tpms/view/TpmsMainActivity;->tv_sptires_pressure:Landroid/widget/TextView;

    iget v3, v3, Lcom/tpms/modle/TiresState;->AirPressure:I

    invoke-virtual {p0, v3}, Lcom/tpms/view/TpmsMainActivity;->getPressure(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->tv_sptires_temp:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tpms/view/TpmsMainActivity;->mSpareTire:Lcom/tpms/modle/TiresState;

    iget v4, v4, Lcom/tpms/modle/TiresState;->Temperature:I

    invoke-virtual {p0, v4}, Lcom/tpms/view/TpmsMainActivity;->getTempString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 359
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 360
    iget-object v0, p0, Lcom/tpms/view/TpmsMainActivity;->mPDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/tpms/view/TpmsMainActivity;->mSyncHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 364
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->mSyncRunAble:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 368
    :cond_1
    :try_start_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/tpms/modle/DeviceOpenEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/tpms/modle/DeviceOpenEvent;

    .line 522
    iget-boolean v0, p1, Lcom/tpms/modle/DeviceOpenEvent;->mOpen:Z

    .line 525
    return-void
.end method

.method public onEventMainThread(Lcom/tpms/modle/TiresStateEvent;)V
    .locals 8
    .param p1, "alarm"    # Lcom/tpms/modle/TiresStateEvent;

    .line 383
    iget-object v0, p0, Lcom/tpms/view/TpmsMainActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms;->isDevCheckOk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/tpms/view/TpmsMainActivity;->mPDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/tpms/view/TpmsMainActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u6536\u5230\u80ce\u538b\u88c5\u6001\u6570\u636e"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget v0, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/tpms/view/TpmsMainActivity;->mFrontLeft:Lcom/tpms/modle/TiresState;

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v4, p0, Lcom/tpms/view/TpmsMainActivity;->mFrontLeft:Lcom/tpms/modle/TiresState;

    iget-object v4, v4, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    iput-object v4, v0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    goto :goto_0

    .line 394
    :cond_2
    iget v0, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/tpms/view/TpmsMainActivity;->mFrontRight:Lcom/tpms/modle/TiresState;

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v4, p0, Lcom/tpms/view/TpmsMainActivity;->mFrontRight:Lcom/tpms/modle/TiresState;

    iget-object v4, v4, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    iput-object v4, v0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    goto :goto_0

    .line 396
    :cond_3
    iget v0, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/tpms/view/TpmsMainActivity;->mBackRight:Lcom/tpms/modle/TiresState;

    if-eqz v0, :cond_4

    .line 397
    iget-object v0, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v4, p0, Lcom/tpms/view/TpmsMainActivity;->mBackRight:Lcom/tpms/modle/TiresState;

    iget-object v4, v4, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    iput-object v4, v0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    goto :goto_0

    .line 398
    :cond_4
    iget v0, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tpms/view/TpmsMainActivity;->mBackLeft:Lcom/tpms/modle/TiresState;

    if-eqz v0, :cond_5

    .line 399
    iget-object v0, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v4, p0, Lcom/tpms/view/TpmsMainActivity;->mBackLeft:Lcom/tpms/modle/TiresState;

    iget-object v4, v4, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    iput-object v4, v0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    .line 402
    :cond_5
    :goto_0
    const-string v0, ""

    .line 404
    .local v0, "title":Ljava/lang/String;
    iget v4, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    const v5, 0x7f050034

    const v6, 0x7f050036

    if-ne v4, v3, :cond_7

    .line 405
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms3;->getFrontLeftState()Lcom/tpms/modle/TiresState;

    move-result-object v1

    iput-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->mFrontLeft:Lcom/tpms/modle/TiresState;

    .line 406
    const-string v0, "\u524d\u5de6\u8f6e"

    .line 407
    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->front_left_pressure:Landroid/widget/TextView;

    iget v1, v1, Lcom/tpms/modle/TiresState;->AirPressure:I

    invoke-virtual {p0, v1}, Lcom/tpms/view/TpmsMainActivity;->getPressure(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->front_left_temp:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->mFrontLeft:Lcom/tpms/modle/TiresState;

    iget v2, v2, Lcom/tpms/modle/TiresState;->Temperature:I

    invoke-virtual {p0, v2}, Lcom/tpms/view/TpmsMainActivity;->getTempString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->front_left_connect:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-boolean v2, v2, Lcom/tpms/modle/TiresState;->NoSignal:Z

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    const v5, 0x7f050036

    :goto_1
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 412
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->front_left_error:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->front_left_infos:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->front_left_betta:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/tpms/view/TpmsMainActivity;->updateView(Lcom/tpms/modle/TiresStateEvent;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    goto/16 :goto_5

    .line 414
    :cond_7
    iget v3, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    const v4, 0x7f050035

    const v7, 0x7f050037

    if-ne v3, v2, :cond_9

    .line 415
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms3;->getFrontRightState()Lcom/tpms/modle/TiresState;

    move-result-object v1

    iput-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->mFrontRight:Lcom/tpms/modle/TiresState;

    .line 416
    const-string v0, "\u524d\u53f3\u8f6e"

    .line 417
    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->front_right_pressure:Landroid/widget/TextView;

    iget v1, v1, Lcom/tpms/modle/TiresState;->AirPressure:I

    invoke-virtual {p0, v1}, Lcom/tpms/view/TpmsMainActivity;->getPressure(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->front_right_temp:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->mFrontRight:Lcom/tpms/modle/TiresState;

    iget v2, v2, Lcom/tpms/modle/TiresState;->Temperature:I

    invoke-virtual {p0, v2}, Lcom/tpms/view/TpmsMainActivity;->getTempString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->front_right_connect:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-boolean v2, v2, Lcom/tpms/modle/TiresState;->NoSignal:Z

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    const v4, 0x7f050037

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 421
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->front_right_error:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->front_right_infos:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->front_right_betta:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/tpms/view/TpmsMainActivity;->updateView(Lcom/tpms/modle/TiresStateEvent;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    goto/16 :goto_5

    .line 423
    :cond_9
    iget v2, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-ne v2, v1, :cond_b

    .line 424
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms3;->getBackRightState()Lcom/tpms/modle/TiresState;

    move-result-object v1

    iput-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->mBackRight:Lcom/tpms/modle/TiresState;

    .line 425
    const-string v0, "\u540e\u53f3\u8f6e"

    .line 426
    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->back_right_pressure:Landroid/widget/TextView;

    iget v1, v1, Lcom/tpms/modle/TiresState;->AirPressure:I

    invoke-virtual {p0, v1}, Lcom/tpms/view/TpmsMainActivity;->getPressure(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->back_right_temp:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->mBackRight:Lcom/tpms/modle/TiresState;

    iget v2, v2, Lcom/tpms/modle/TiresState;->Temperature:I

    invoke-virtual {p0, v2}, Lcom/tpms/view/TpmsMainActivity;->getTempString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->back_right_connect:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-boolean v2, v2, Lcom/tpms/modle/TiresState;->NoSignal:Z

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_a
    const v4, 0x7f050037

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 430
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->back_right_error:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->back_right_infos:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->back_right_betta:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/tpms/view/TpmsMainActivity;->updateView(Lcom/tpms/modle/TiresStateEvent;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    goto :goto_5

    .line 432
    :cond_b
    iget v1, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-nez v1, :cond_d

    .line 433
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms3;->getBackLeftState()Lcom/tpms/modle/TiresState;

    move-result-object v1

    iput-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->mBackLeft:Lcom/tpms/modle/TiresState;

    .line 434
    const-string v0, "\u540e\u5de6\u8f6e"

    .line 435
    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->back_left_pressure:Landroid/widget/TextView;

    iget v1, v1, Lcom/tpms/modle/TiresState;->AirPressure:I

    invoke-virtual {p0, v1}, Lcom/tpms/view/TpmsMainActivity;->getPressure(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->back_left_temp:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->mBackLeft:Lcom/tpms/modle/TiresState;

    iget v2, v2, Lcom/tpms/modle/TiresState;->Temperature:I

    invoke-virtual {p0, v2}, Lcom/tpms/view/TpmsMainActivity;->getTempString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->back_left_connect:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-boolean v2, v2, Lcom/tpms/modle/TiresState;->NoSignal:Z

    if-eqz v2, :cond_c

    goto :goto_4

    :cond_c
    const v5, 0x7f050036

    :goto_4
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 439
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->back_left_error:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->back_left_infos:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->back_left_betta:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/tpms/view/TpmsMainActivity;->updateView(Lcom/tpms/modle/TiresStateEvent;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    goto :goto_5

    .line 441
    :cond_d
    iget v1, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_e

    .line 442
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms3;->getSpareTire()Lcom/tpms/modle/TiresState;

    move-result-object v1

    iput-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->mSpareTire:Lcom/tpms/modle/TiresState;

    .line 443
    const-string v0, "\u5907\u80ce"

    .line 445
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->tv_sptires_pressure:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget v2, v2, Lcom/tpms/modle/TiresState;->AirPressure:I

    invoke-virtual {p0, v2}, Lcom/tpms/view/TpmsMainActivity;->getPressure(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->tv_sptires_temp:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget v2, v2, Lcom/tpms/modle/TiresState;->Temperature:I

    invoke-virtual {p0, v2}, Lcom/tpms/view/TpmsMainActivity;->getTempString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->tv_sptires_error:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tpms/view/TpmsMainActivity;->ll_sptires_contioner:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tpms/view/TpmsMainActivity;->tv_sptires_betta:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/tpms/view/TpmsMainActivity;->updateView(Lcom/tpms/modle/TiresStateEvent;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    .line 454
    :cond_e
    :goto_5
    return-void
.end method

.method public onEventMainThread(Lcom/tpms/modle/TpmsDevErrorEvent;)V
    .locals 0
    .param p1, "error"    # Lcom/tpms/modle/TpmsDevErrorEvent;

    .line 528
    invoke-virtual {p0}, Lcom/tpms/view/TpmsMainActivity;->finish()V

    .line 529
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "inte"    # Landroid/content/Intent;

    .line 283
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 284
    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "act":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/tpms/view/TpmsMainActivity;->finish()V

    .line 288
    return-void

    .line 291
    .end local v0    # "act":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 319
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 321
    iget-object v0, p0, Lcom/tpms/view/TpmsMainActivity;->mTpms:Lcom/tpms/biz/Tpms;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tpms/biz/Tpms;->setForeground(Z)V

    .line 322
    iget-object v0, p0, Lcom/tpms/view/TpmsMainActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms;->closeFloatWindow()V

    .line 324
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->getSparetireEnable()Z

    move-result v0

    .line 325
    .local v0, "spret":Z
    if-eqz v0, :cond_0

    .line 326
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->ll_sptires_contioner:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/tpms/view/TpmsMainActivity;->ll_sptires_contioner:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 331
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/tpms/view/TpmsMainActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms;->closeFloatWindow()V

    .line 308
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 309
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/tpms/view/TpmsMainActivity;->mTpms:Lcom/tpms/biz/Tpms;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tpms/biz/Tpms;->setForeground(Z)V

    .line 353
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 354
    return-void
.end method
