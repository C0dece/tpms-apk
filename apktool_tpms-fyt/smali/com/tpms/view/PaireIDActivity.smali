.class public Lcom/tpms/view/PaireIDActivity;
.super Landroid/app/Activity;
.source "PaireIDActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field app:Lcom/syt/tmps/TpmsApplication;

.field btn_paire_canel:Landroid/widget/Button;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f06002c
    .end annotation
.end field

.field btn_paire_start:Landroid/widget/Button;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f06002e
    .end annotation
.end field

.field datasrc:Lcom/std/dev/TpmsDataSrc;

.field ib_left_back_id:Landroid/widget/ImageButton;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060068
    .end annotation
.end field

.field ib_left_front_id:Landroid/widget/ImageButton;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060069
    .end annotation
.end field

.field ib_right_back_id:Landroid/widget/ImageButton;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f06006a
    .end annotation
.end field

.field ib_right_front_id:Landroid/widget/ImageButton;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f06006b
    .end annotation
.end field

.field mImgBtn:Landroid/view/View;

.field mTimeOut:I

.field progressBar1:Landroid/widget/ProgressBar;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f06008e
    .end annotation
.end field

.field timeOut:Landroid/os/Handler;

.field timeOutCnt:Ljava/lang/Runnable;

.field tires_container:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600a4
    .end annotation
.end field

.field tv_left_back_id:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600aa
    .end annotation
.end field

.field tv_left_front_id:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600ab
    .end annotation
.end field

.field tv_right_back_id:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600af
    .end annotation
.end field

.field tv_right_front_id:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600b0
    .end annotation
.end field

.field tv_sptires_id:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600b4
    .end annotation
.end field

.field tv_title_state:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600b8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const-string v0, "PaireIDActivity"

    iput-object v0, p0, Lcom/tpms/view/PaireIDActivity;->TAG:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/view/PaireIDActivity;->datasrc:Lcom/std/dev/TpmsDataSrc;

    .line 65
    iput-object v0, p0, Lcom/tpms/view/PaireIDActivity;->app:Lcom/syt/tmps/TpmsApplication;

    .line 115
    const/16 v0, 0x78

    iput v0, p0, Lcom/tpms/view/PaireIDActivity;->mTimeOut:I

    .line 241
    new-instance v0, Lcom/tpms/view/PaireIDActivity$1;

    invoke-direct {v0, p0}, Lcom/tpms/view/PaireIDActivity$1;-><init>(Lcom/tpms/view/PaireIDActivity;)V

    iput-object v0, p0, Lcom/tpms/view/PaireIDActivity;->timeOutCnt:Ljava/lang/Runnable;

    return-void
.end method

.method private setSelectButton(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->btn_paire_canel:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->btn_paire_canel:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/tpms/view/PaireIDActivity;->btn_paire_canel(Landroid/view/View;)V

    .line 172
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->mImgBtn:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 178
    :cond_1
    iput-object p1, p0, Lcom/tpms/view/PaireIDActivity;->mImgBtn:Landroid/view/View;

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 182
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->btn_paire_start:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->btn_paire_canel:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->tv_title_state:Landroid/widget/TextView;

    const v1, 0x7f0b0004

    invoke-virtual {p0, v1}, Lcom/tpms/view/PaireIDActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method


# virtual methods
.method public back_ui(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060015
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lcom/tpms/view/PaireIDActivity;->finish()V

    .line 395
    return-void
.end method

.method public btn_paire_canel(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06002c
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->btn_paire_start:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->btn_paire_canel:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->TAG:Ljava/lang/String;

    const-string v2, "btn_paire_canel"

    invoke-static {v0, v2}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->tv_title_state:Landroid/widget/TextView;

    const v2, 0x7f0b0015

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 195
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->progressBar1:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 196
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->stopPaire()V

    .line 198
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->timeOut:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tpms/view/PaireIDActivity;->timeOutCnt:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->mImgBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->tires_container:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    return-void
.end method

.method public btn_paire_start(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06002e
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->mImgBtn:Landroid/view/View;

    if-nez v0, :cond_0

    .line 209
    return-void

    .line 211
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 212
    .local v0, "selectid":I
    const v1, 0x7f0600b4

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 217
    :pswitch_0
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms3;->paireFrontRight()V

    .line 218
    goto :goto_0

    .line 220
    :pswitch_1
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms3;->paireBackRight()V

    .line 221
    goto :goto_0

    .line 214
    :pswitch_2
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms3;->paireFrontLeft()V

    .line 215
    goto :goto_0

    .line 223
    :pswitch_3
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms3;->paireBackLeft()V

    .line 224
    goto :goto_0

    .line 226
    :cond_1
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms3;->paireSpTired()V

    .line 230
    :goto_0
    iget-object v1, p0, Lcom/tpms/view/PaireIDActivity;->btn_paire_canel:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 231
    iget-object v1, p0, Lcom/tpms/view/PaireIDActivity;->btn_paire_start:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    iget-object v1, p0, Lcom/tpms/view/PaireIDActivity;->tv_title_state:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b0036

    invoke-virtual {p0, v4}, Lcom/tpms/view/PaireIDActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/tpms/view/PaireIDActivity;->mTimeOut:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v1, p0, Lcom/tpms/view/PaireIDActivity;->progressBar1:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 235
    const/16 v1, 0x78

    iput v1, p0, Lcom/tpms/view/PaireIDActivity;->mTimeOut:I

    .line 236
    iget-object v1, p0, Lcom/tpms/view/PaireIDActivity;->timeOut:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tpms/view/PaireIDActivity;->timeOutCnt:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    return-void

    :pswitch_data_0
    .packed-switch 0x7f060068
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ib_left_back_id(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060068
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1}, Lcom/tpms/view/PaireIDActivity;->setSelectButton(Landroid/view/View;)V

    .line 161
    return-void
.end method

.method public ib_left_front_id(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060069
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1}, Lcom/tpms/view/PaireIDActivity;->setSelectButton(Landroid/view/View;)V

    .line 146
    return-void
.end method

.method public ib_right_back_id(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06006a
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1}, Lcom/tpms/view/PaireIDActivity;->setSelectButton(Landroid/view/View;)V

    .line 156
    return-void
.end method

.method public ib_right_front_id(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06006b
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1}, Lcom/tpms/view/PaireIDActivity;->setSelectButton(Landroid/view/View;)V

    .line 151
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/tpms/view/PaireIDActivity;->setContentView(I)V

    .line 121
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 122
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p0}, Lcom/tpms/view/PaireIDActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/syt/tmps/TpmsApplication;

    iput-object v0, p0, Lcom/tpms/view/PaireIDActivity;->app:Lcom/syt/tmps/TpmsApplication;

    .line 125
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->getDatasrc()Lcom/std/dev/TpmsDataSrc;

    move-result-object v0

    iput-object v0, p0, Lcom/tpms/view/PaireIDActivity;->datasrc:Lcom/std/dev/TpmsDataSrc;

    .line 126
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->querySensorID()V

    .line 128
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->btn_paire_start:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->btn_paire_canel:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    const-string v0, ""

    .line 132
    .local v0, "title":Ljava/lang/String;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/tpms/view/PaireIDActivity;->timeOut:Landroid/os/Handler;

    .line 134
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms3;->getSparetireEnable()Z

    move-result v2

    .line 135
    .local v2, "spret":Z
    if-nez v2, :cond_0

    .line 136
    iget-object v3, p0, Lcom/tpms/view/PaireIDActivity;->tv_sptires_id:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/tpms/view/PaireIDActivity;->tv_sptires_id:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 276
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy onDestroy"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 278
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->stopPaire()V

    .line 279
    return-void
.end method

.method public onEventMainThread(Lcom/tpms/modle/PaireIDOkEvent;)V
    .locals 5
    .param p1, "id"    # Lcom/tpms/modle/PaireIDOkEvent;

    .line 307
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6536\u5230\u4e86\u914d\u5bf9\u4e5f\u5c31\u662f\u5b66\u4e60\u5230\u4e86ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/tpms/modle/PaireIDOkEvent;->tires:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";mac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tpms/modle/PaireIDOkEvent;->mID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget v0, p1, Lcom/tpms/modle/PaireIDOkEvent;->tires:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 311
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->ib_left_front_id:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 315
    :cond_0
    iget v0, p1, Lcom/tpms/modle/PaireIDOkEvent;->tires:I

    if-ne v0, v1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->ib_right_front_id:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 320
    :cond_1
    iget v0, p1, Lcom/tpms/modle/PaireIDOkEvent;->tires:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 323
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->ib_right_back_id:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 325
    :cond_2
    iget v0, p1, Lcom/tpms/modle/PaireIDOkEvent;->tires:I

    if-nez v0, :cond_3

    .line 328
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->ib_left_back_id:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 330
    :cond_3
    iget v0, p1, Lcom/tpms/modle/PaireIDOkEvent;->tires:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_4

    .line 332
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->tv_sptires_id:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 338
    :cond_4
    :goto_0
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->querySensorID()V

    .line 342
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->mImgBtn:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 343
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 346
    :cond_5
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->btn_paire_canel:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    .line 347
    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/tpms/view/PaireIDActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 350
    :cond_6
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->btn_paire_canel:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/tpms/view/PaireIDActivity;->btn_paire_canel(Landroid/view/View;)V

    .line 352
    return-void
.end method

.method public onEventMainThread(Lcom/tpms/modle/QueryIDOkEvent;)V
    .locals 5
    .param p1, "id"    # Lcom/tpms/modle/QueryIDOkEvent;

    .line 355
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6536\u5230\u4e86\u67e5\u5bfbID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/tpms/modle/QueryIDOkEvent;->tires:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";mac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget v0, p1, Lcom/tpms/modle/QueryIDOkEvent;->tires:I

    const/4 v1, 0x0

    const-string v2, "ID:"

    const-string v3, "test"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u67e5\u5230 \u5de6\u524did:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->tv_left_front_id:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->ib_left_front_id:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto/16 :goto_0

    .line 363
    :cond_0
    iget v0, p1, Lcom/tpms/modle/QueryIDOkEvent;->tires:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u67e5\u5230 \u53f3\u524did:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->tv_right_front_id:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->ib_right_front_id:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto/16 :goto_0

    .line 369
    :cond_1
    iget v0, p1, Lcom/tpms/modle/QueryIDOkEvent;->tires:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u67e5\u5230 \u53f3\u540eid:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->tv_right_back_id:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->ib_right_back_id:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 375
    :cond_2
    iget v0, p1, Lcom/tpms/modle/QueryIDOkEvent;->tires:I

    if-nez v0, :cond_3

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u67e5\u5230 \u5de6\u540eid:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->tv_left_back_id:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->ib_left_back_id:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 381
    :cond_3
    iget v0, p1, Lcom/tpms/modle/QueryIDOkEvent;->tires:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_4

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u67e5\u5230 \u5907\u80ceid:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->tv_sptires_id:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->tv_sptires_id:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 390
    :cond_4
    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStop onStop"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms3;->stopPaire()V

    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 297
    return-void
.end method

.method public tv_sptires_id(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0600b4
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->TAG:Ljava/lang/String;

    const-string v1, "tv_sptires_id"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/tpms/view/PaireIDActivity;->setSelectButton(Landroid/view/View;)V

    .line 167
    return-void
.end method

.method public view_plane(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0600bc
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/tpms/view/PaireIDActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u906e\u7f69\u5c42\uff0c\u5c4f\u853d\u4e0b\u5c42\u7684\u70b9\u51fb\u4e8b\u4ef6"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method
