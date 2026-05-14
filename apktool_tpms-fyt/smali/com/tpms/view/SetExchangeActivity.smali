.class public Lcom/tpms/view/SetExchangeActivity;
.super Landroid/app/Fragment;
.source "SetExchangeActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field app:Lcom/syt/tmps/TpmsApplication;

.field btn_cannel_exchange:Landroid/widget/Button;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060019
    .end annotation
.end field

.field btn_sp_bl:Landroid/widget/Button;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060033
    .end annotation
.end field

.field btn_sp_br:Landroid/widget/Button;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060034
    .end annotation
.end field

.field btn_sp_fl:Landroid/widget/Button;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060035
    .end annotation
.end field

.field btn_sp_fr:Landroid/widget/Button;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060036
    .end annotation
.end field

.field btn_start_exchange:Landroid/widget/Button;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060039
    .end annotation
.end field

.field datasrc:Lcom/std/dev/TpmsDataSrc;

.field private final filterReceiver:Landroid/content/BroadcastReceiver;

.field iv_exchange:Landroid/widget/ImageView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060072
    .end annotation
.end field

.field mExChangeFailed:Lcom/tpms/widget/CDialog;

.field mExChangeOk:Landroid/widget/Toast;

.field mFailedAble:Ljava/lang/Runnable;

.field mFailedHander:Landroid/os/Handler;

.field mPDlg:Landroid/app/AlertDialog;

.field mSelectBtn:Landroid/widget/Button;

.field mTpms:Lcom/tpms/biz/Tpms;

.field tv_exchange_hint:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600a7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 63
    const-string v0, "SetExchangeActivity"

    iput-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->datasrc:Lcom/std/dev/TpmsDataSrc;

    .line 67
    iput-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->app:Lcom/syt/tmps/TpmsApplication;

    .line 166
    new-instance v0, Lcom/tpms/view/SetExchangeActivity$1;

    invoke-direct {v0, p0}, Lcom/tpms/view/SetExchangeActivity$1;-><init>(Lcom/tpms/view/SetExchangeActivity;)V

    iput-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->filterReceiver:Landroid/content/BroadcastReceiver;

    .line 377
    new-instance v0, Lcom/tpms/view/SetExchangeActivity$2;

    invoke-direct {v0, p0}, Lcom/tpms/view/SetExchangeActivity$2;-><init>(Lcom/tpms/view/SetExchangeActivity;)V

    iput-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->mFailedAble:Ljava/lang/Runnable;

    return-void
.end method

.method private setPress(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 391
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->mSelectBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 394
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->mSelectBtn:Landroid/widget/Button;

    .line 395
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 397
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->tv_exchange_hint:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mSelectBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    return-void
.end method

.method private setUnPress()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->mSelectBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 405
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->mSelectBtn:Landroid/widget/Button;

    .line 406
    return-void
.end method

.method private showLeftTires(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 226
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 227
    iget-object v2, p0, Lcom/tpms/view/SetExchangeActivity;->btn_sp_fl:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 228
    iget-object v2, p0, Lcom/tpms/view/SetExchangeActivity;->btn_sp_fr:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 229
    iget-object v2, p0, Lcom/tpms/view/SetExchangeActivity;->btn_sp_bl:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 230
    iget-object v2, p0, Lcom/tpms/view/SetExchangeActivity;->btn_sp_br:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 231
    iget-object v2, p0, Lcom/tpms/view/SetExchangeActivity;->iv_exchange:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 233
    invoke-virtual {p0, v0}, Lcom/tpms/view/SetExchangeActivity;->btn_cannel_exchange(Landroid/view/View;)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/tpms/view/SetExchangeActivity;->btn_sp_fl:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 236
    iget-object v2, p0, Lcom/tpms/view/SetExchangeActivity;->btn_sp_fr:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    iget-object v2, p0, Lcom/tpms/view/SetExchangeActivity;->btn_sp_bl:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 238
    iget-object v2, p0, Lcom/tpms/view/SetExchangeActivity;->btn_sp_br:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 240
    invoke-virtual {p0, v0}, Lcom/tpms/view/SetExchangeActivity;->btn_cannel_exchange(Landroid/view/View;)V

    .line 241
    iput-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->mSelectBtn:Landroid/widget/Button;

    .line 244
    :goto_0
    return-void
.end method


# virtual methods
.method public back_exchange(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060008
        }
    .end annotation

    .line 254
    invoke-direct {p0, p1}, Lcom/tpms/view/SetExchangeActivity;->setPress(Landroid/view/View;)V

    .line 255
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->iv_exchange:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 256
    return-void
.end method

.method public btn_cannel_exchange(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060019
        }
    .end annotation

    .line 316
    invoke-direct {p0}, Lcom/tpms/view/SetExchangeActivity;->setUnPress()V

    .line 317
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms;->getSparetireEnable()Z

    move-result v0

    .line 318
    .local v0, "spret":Z
    if-eqz v0, :cond_0

    .line 319
    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->iv_exchange:Landroid/widget/ImageView;

    const v2, 0x7f05003e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->iv_exchange:Landroid/widget/ImageView;

    const v2, 0x7f05003d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 323
    :goto_0
    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->iv_exchange:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 325
    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->tv_exchange_hint:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mFailedHander:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tpms/view/SetExchangeActivity;->mFailedAble:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 328
    return-void
.end method

.method public btn_sp_bl(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060033
        }
    .end annotation

    .line 303
    invoke-direct {p0, p1}, Lcom/tpms/view/SetExchangeActivity;->setPress(Landroid/view/View;)V

    .line 304
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->iv_exchange:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 305
    return-void
.end method

.method public btn_sp_br(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060034
        }
    .end annotation

    .line 309
    invoke-direct {p0, p1}, Lcom/tpms/view/SetExchangeActivity;->setPress(Landroid/view/View;)V

    .line 310
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->iv_exchange:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 311
    return-void
.end method

.method public btn_sp_fl(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060035
        }
    .end annotation

    .line 291
    invoke-direct {p0, p1}, Lcom/tpms/view/SetExchangeActivity;->setPress(Landroid/view/View;)V

    .line 292
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->iv_exchange:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 293
    return-void
.end method

.method public btn_sp_fr(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060036
        }
    .end annotation

    .line 297
    invoke-direct {p0, p1}, Lcom/tpms/view/SetExchangeActivity;->setPress(Landroid/view/View;)V

    .line 298
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->iv_exchange:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 299
    return-void
.end method

.method public btn_start_exchange(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060039
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->mSelectBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 334
    return-void

    .line 335
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v0

    .line 336
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 338
    :sswitch_0
    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->exchangeLeftFrontLeftBack()V

    .line 340
    goto :goto_0

    .line 342
    :sswitch_1
    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->exchangeLeftFrontRightBack()V

    .line 343
    goto :goto_0

    .line 345
    :sswitch_2
    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->exchangeRightFrontRightBack()V

    .line 346
    goto :goto_0

    .line 348
    :sswitch_3
    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->exchangeLeftFrontRightFront()V

    .line 349
    goto :goto_0

    .line 351
    :sswitch_4
    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->exchangeRightFrontLeftBack()V

    .line 352
    goto :goto_0

    .line 360
    :sswitch_5
    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->exchange_sp_fr()V

    .line 361
    goto :goto_0

    .line 357
    :sswitch_6
    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->exchange_sp_fl()V

    .line 358
    goto :goto_0

    .line 366
    :sswitch_7
    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->exchange_sp_br()V

    .line 367
    goto :goto_0

    .line 363
    :sswitch_8
    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->exchange_sp_bl()V

    .line 364
    goto :goto_0

    .line 354
    :sswitch_9
    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->exchangeLeftBackRightBack()V

    .line 355
    nop

    .line 371
    :goto_0
    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->tv_exchange_hint:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tpms/view/SetExchangeActivity;->mSelectBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    invoke-virtual {p0}, Lcom/tpms/view/SetExchangeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tpms/widget/PAlertDialog;->showDiolg(Landroid/content/Context;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mPDlg:Landroid/app/AlertDialog;

    .line 374
    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mFailedHander:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tpms/view/SetExchangeActivity;->mFailedAble:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f060008 -> :sswitch_9
        0x7f060033 -> :sswitch_8
        0x7f060034 -> :sswitch_7
        0x7f060035 -> :sswitch_6
        0x7f060036 -> :sswitch_5
        0x7f060051 -> :sswitch_4
        0x7f060052 -> :sswitch_3
        0x7f060053 -> :sswitch_2
        0x7f060084 -> :sswitch_1
        0x7f060085 -> :sswitch_0
    .end sparse-switch
.end method

.method public deputy_cross(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060051
        }
    .end annotation

    .line 260
    invoke-direct {p0, p1}, Lcom/tpms/view/SetExchangeActivity;->setPress(Landroid/view/View;)V

    .line 261
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->iv_exchange:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 262
    return-void
.end method

.method public deputy_master(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060052
        }
    .end annotation

    .line 266
    invoke-direct {p0, p1}, Lcom/tpms/view/SetExchangeActivity;->setPress(Landroid/view/View;)V

    .line 267
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->iv_exchange:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 268
    return-void
.end method

.method public deputy_updown(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060053
        }
    .end annotation

    .line 272
    invoke-direct {p0, p1}, Lcom/tpms/view/SetExchangeActivity;->setPress(Landroid/view/View;)V

    .line 273
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->iv_exchange:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 274
    return-void
.end method

.method public master_cross(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060084
        }
    .end annotation

    .line 278
    invoke-direct {p0, p1}, Lcom/tpms/view/SetExchangeActivity;->setPress(Landroid/view/View;)V

    .line 279
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->iv_exchange:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 280
    return-void
.end method

.method public mater_updown(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060085
        }
    .end annotation

    .line 284
    invoke-direct {p0, p1}, Lcom/tpms/view/SetExchangeActivity;->setPress(Landroid/view/View;)V

    .line 285
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->iv_exchange:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 286
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 126
    const v0, 0x7f08000b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 130
    invoke-virtual {p0}, Lcom/tpms/view/SetExchangeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/syt/tmps/TpmsApplication;

    iput-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->app:Lcom/syt/tmps/TpmsApplication;

    .line 131
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 132
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms3;->getDatasrc()Lcom/std/dev/TpmsDataSrc;

    move-result-object v1

    iput-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->datasrc:Lcom/std/dev/TpmsDataSrc;

    .line 133
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    iput-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mTpms:Lcom/tpms/biz/Tpms;

    .line 135
    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->btn_cannel_exchange:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 137
    invoke-virtual {p0}, Lcom/tpms/view/SetExchangeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b000c

    invoke-virtual {p0, v2}, Lcom/tpms/view/SetExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mExChangeOk:Landroid/widget/Toast;

    .line 138
    new-instance v1, Lcom/tpms/widget/CDialog;

    invoke-virtual {p0}, Lcom/tpms/view/SetExchangeActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080007

    invoke-direct {v1, v2, v3}, Lcom/tpms/widget/CDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mExChangeFailed:Lcom/tpms/widget/CDialog;

    .line 139
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mFailedHander:Landroid/os/Handler;

    .line 141
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms3;->getSparetireEnable()Z

    move-result v1

    .line 142
    .local v1, "spret":Z
    xor-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/tpms/view/SetExchangeActivity;->showLeftTires(Z)V

    .line 143
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->mFailedHander:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mFailedAble:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 454
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 455
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 160
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 161
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 162
    return-void
.end method

.method public onEventMainThread(Lcom/tpms/modle/TiresExchangeEvent;)V
    .locals 3
    .param p1, "ev"    # Lcom/tpms/modle/TiresExchangeEvent;

    .line 409
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4ea4\u6362\u6210\u529f ev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tpms/modle/TiresExchangeEvent;->EventName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p1, Lcom/tpms/modle/TiresExchangeEvent;->EventName:Ljava/lang/String;

    const-string v1, "\u5de6\u524d\u53f3\u524d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p1, Lcom/tpms/modle/TiresExchangeEvent;->EventName:Ljava/lang/String;

    const-string v1, "\u5de6\u524d\u5de6\u540e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 414
    :cond_1
    iget-object v0, p1, Lcom/tpms/modle/TiresExchangeEvent;->EventName:Ljava/lang/String;

    const-string v1, "\u5de6\u524d\u53f3\u540e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 416
    :cond_2
    iget-object v0, p1, Lcom/tpms/modle/TiresExchangeEvent;->EventName:Ljava/lang/String;

    const-string v1, "\u53f3\u524d\u5de6\u540e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 418
    :cond_3
    iget-object v0, p1, Lcom/tpms/modle/TiresExchangeEvent;->EventName:Ljava/lang/String;

    const-string v1, "\u53f3\u524d\u53f3\u540e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 420
    :cond_4
    iget-object v0, p1, Lcom/tpms/modle/TiresExchangeEvent;->EventName:Ljava/lang/String;

    const-string v1, "\u5de6\u540e\u53f3\u540e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 428
    :goto_0
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->mPDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 429
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->mPDlg:Landroid/app/AlertDialog;

    .line 438
    :cond_5
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->mExChangeOk:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 440
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->btn_cannel_exchange:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/tpms/view/SetExchangeActivity;->btn_cannel_exchange(Landroid/view/View;)V

    .line 441
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3
    .param p1, "arg0"    # Z

    .line 203
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 205
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHiddenChanged :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/tpms/view/SetExchangeActivity;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u8fd8\u6ca1\u6709\u521b\u5efaview"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->mFailedHander:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mFailedAble:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->getSparetireEnable()Z

    move-result v0

    .line 220
    .local v0, "spret":Z
    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/tpms/view/SetExchangeActivity;->showLeftTires(Z)V

    .line 223
    .end local v0    # "spret":Z
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->mFailedHander:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tpms/view/SetExchangeActivity;->mFailedAble:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 447
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 448
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3
    .param p1, "isVisibleToUser"    # Z

    .line 461
    invoke-super {p0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 462
    iget-object v0, p0, Lcom/tpms/view/SetExchangeActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserVisibleHint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return-void
.end method
