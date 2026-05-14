.class public Lcom/tpms/view/SetDetailActivity;
.super Landroid/app/Fragment;
.source "SetDetailActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field app:Lcom/syt/tmps/TpmsApplication;

.field cb_betta_warring:Landroid/widget/ToggleButton;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060044
    .end annotation
.end field

.field cb_connect_warring:Landroid/widget/ToggleButton;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060045
    .end annotation
.end field

.field cb_showui_enable:Landroid/widget/ToggleButton;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060046
    .end annotation
.end field

.field cb_sound_warring:Landroid/widget/ToggleButton;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060047
    .end annotation
.end field

.field cb_spare_tire_enable:Landroid/widget/ToggleButton;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f060048
    .end annotation
.end field

.field datasrc:Lcom/std/dev/TpmsDataSrc;

.field mBackLeft:Lcom/tpms/modle/TiresState;

.field mBackRight:Lcom/tpms/modle/TiresState;

.field mFrontLeft:Lcom/tpms/modle/TiresState;

.field mFrontRight:Lcom/tpms/modle/TiresState;

.field mTpms:Lcom/tpms/biz/Tpms;

.field resetDlg:Lcom/tpms/widget/CDialog;

.field tv_hi_temp:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600a8
    .end annotation
.end field

.field tv_hipressure:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600a9
    .end annotation
.end field

.field tv_lopressure:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600ac
    .end annotation
.end field

.field tv_pressureunit:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600ad
    .end annotation
.end field

.field tv_pressoffset:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600bd
    .end annotation
.end field

.field btn_pressoffset_dec:Landroid/widget/ImageButton;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600be
    .end annotation
.end field

.field btn_pressoffset_add:Landroid/widget/ImageButton;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600bf
    .end annotation
.end field

.field tv_tempunit:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600b7
    .end annotation
.end field

.field tv_version:Landroid/widget/TextView;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0600ba
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 63
    const-string v0, "TpmsMainActivity"

    iput-object v0, p0, Lcom/tpms/view/SetDetailActivity;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/view/SetDetailActivity;->datasrc:Lcom/std/dev/TpmsDataSrc;

    .line 67
    iput-object v0, p0, Lcom/tpms/view/SetDetailActivity;->app:Lcom/syt/tmps/TpmsApplication;

    return-void
.end method

.method static synthetic access$000(Lcom/tpms/view/SetDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tpms/view/SetDetailActivity;

    .line 60
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public btn_hipressure_add(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060021
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_hipressure:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->addHiPressStamp()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tpms/biz/Tpms;->getPressString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    return-void
.end method

.method public btn_hipressure_dec(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060022
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hipressure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->getHiPress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-static {v1, v0}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_hipressure:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->decHiPressStamp()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tpms/biz/Tpms;->getPressString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method

.method public btn_hipressure_def(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060023
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_hipressure:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->setHiPressDef()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tpms/biz/Tpms;->getPressString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_lopressure:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->setLowPressDef()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tpms/biz/Tpms;->getPressString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    return-void
.end method

.method public btn_lowpressure_add(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060025
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_lopressure:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->addLowPressStamp()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tpms/biz/Tpms;->getPressString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    return-void
.end method

.method public btn_lowpressure_dec(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060026
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_lopressure:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->decLowPressStamp()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tpms/biz/Tpms;->getPressString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    return-void
.end method

.method public btn_lowpressure_def(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060027
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_hipressure:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->setHiPressDef()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tpms/biz/Tpms;->getPressString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_lopressure:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->setLowPressDef()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tpms/biz/Tpms;->getPressString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    return-void
.end method

.method public btn_pressureunit_add(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060030
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms;->setNextYaliDanwei()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->tv_pressureunit:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->tv_hipressure:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v3}, Lcom/tpms/biz/Tpms;->getHiPress()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tpms/biz/Tpms;->getPressString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v3}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->tv_lopressure:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v3}, Lcom/tpms/biz/Tpms;->getLowPress()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tpms/biz/Tpms;->getPressString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v3}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_pressoffset:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;
    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->getPressOffsetString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public btn_pressureunit_dec(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060031
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms;->setPreYaliDanwei()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->tv_pressureunit:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->tv_hipressure:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v3}, Lcom/tpms/biz/Tpms;->getHiPress()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tpms/biz/Tpms;->getPressString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v3}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->tv_lopressure:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v3}, Lcom/tpms/biz/Tpms;->getLowPress()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tpms/biz/Tpms;->getPressString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v3}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_pressoffset:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;
    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->getPressOffsetString()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public btn_temp_add(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06003c
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_hi_temp:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->addHiTemp()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tpms/biz/Tpms;->getTempString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getWenduDanwei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    return-void
.end method

.method public btn_temp_dec(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06003d
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_hi_temp:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->decHiTemp()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tpms/biz/Tpms;->getTempString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getWenduDanwei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    return-void
.end method

.method public btn_temp_def(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06003e
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_hi_temp:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->setHiTempDef()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tpms/biz/Tpms;->getTempString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getWenduDanwei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    return-void
.end method

.method public btn_tempunit_add(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f06003f
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms;->setNextWenduDanwei()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->tv_tempunit:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->tv_hi_temp:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v3}, Lcom/tpms/biz/Tpms;->getHiTemp()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tpms/biz/Tpms;->getTempString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v3}, Lcom/tpms/biz/Tpms;->getWenduDanwei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    return-void
.end method

.method public btn_tempunit_dec(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f060040
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v0}, Lcom/tpms/biz/Tpms;->setNextWenduDanwei()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->tv_tempunit:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->tv_hi_temp:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v3}, Lcom/tpms/biz/Tpms;->getHiTemp()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tpms/biz/Tpms;->getTempString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v3}, Lcom/tpms/biz/Tpms;->getWenduDanwei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    return-void
.end method

.method public cb_betta_warring(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "checkBox"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnCompoundButtonCheckedChange;
        value = {
            0x7f060044
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v0, p2}, Lcom/tpms/biz/Tpms;->setBettaWarringEnable(Z)V

    .line 243
    return-void
.end method

.method public cb_connect_warring(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "checkBox"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnCompoundButtonCheckedChange;
        value = {
            0x7f060045
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v0, p2}, Lcom/tpms/biz/Tpms;->setConnectWarringEnable(Z)V

    .line 248
    return-void
.end method

.method public cb_showui_enable(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "checkBox"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnCompoundButtonCheckedChange;
        value = {
            0x7f060046
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v0, p2}, Lcom/tpms/biz/Tpms;->setShowUiEnable(Z)V

    .line 233
    return-void
.end method

.method public cb_sound_warring(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "checkBox"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnCompoundButtonCheckedChange;
        value = {
            0x7f060047
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v0, p2}, Lcom/tpms/biz/Tpms;->setSoundWarringEnable(Z)V

    .line 238
    return-void
.end method

.method public cb_spare_tire_enable(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "checkBox"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnCompoundButtonCheckedChange;
        value = {
            0x7f060048
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v0, p2}, Lcom/tpms/biz/Tpms;->setSparetireEnable(Z)V

    .line 253
    return-void
.end method

.method public initView()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_hi_temp:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getHiTemp()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tpms/biz/Tpms;->getTempString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getWenduDanwei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_tempunit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->getWenduDanwei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_hipressure:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getHiPress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tpms/biz/Tpms;->getPressString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_lopressure:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getLowPress()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tpms/biz/Tpms;->getPressString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_pressureunit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->cb_showui_enable:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->getShowUiEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 159
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->cb_sound_warring:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->getSoundWarringEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 162
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->cb_betta_warring:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->getBettaWarringEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 165
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->cb_connect_warring:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->getConnectWarringEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 167
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->cb_spare_tire_enable:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->getSparetireEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 169
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_version:Landroid/widget/TextView;

    const-string v1, "V1.1.58M_USB_L10_20201229"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_pressoffset:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->getPressOffsetString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 123
    const v0, 0x7f08000c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 127
    invoke-virtual {p0}, Lcom/tpms/view/SetDetailActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/syt/tmps/TpmsApplication;

    iput-object v1, p0, Lcom/tpms/view/SetDetailActivity;->app:Lcom/syt/tmps/TpmsApplication;

    .line 129
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tpms/biz/Tpms3;->getDatasrc()Lcom/std/dev/TpmsDataSrc;

    move-result-object v1

    iput-object v1, p0, Lcom/tpms/view/SetDetailActivity;->datasrc:Lcom/std/dev/TpmsDataSrc;

    .line 130
    invoke-static {}, Lcom/tpms/biz/Tpms3;->getInstant()Lcom/tpms/biz/Tpms3;

    move-result-object v1

    iput-object v1, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;

    .line 132
    invoke-virtual {p0}, Lcom/tpms/view/SetDetailActivity;->initView()V

    .line 133
    const-string v1, "difengze.com"

    const-string v2, "SetDeailActivty onCreateView"

    invoke-static {v1, v2}, Lcom/tpms/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 3
    .param p1, "arg0"    # Z

    .line 206
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 208
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHiddenChanged :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/tpms/view/SetDetailActivity;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u8fd8\u6ca1\u6709\u521b\u5efaview"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void

    .line 216
    :cond_0
    nop

    .line 221
    return-void
.end method

.method public tv_reset_all(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0600ae
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Lcom/tpms/view/SetDetailActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f08001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 350
    .local v0, "vi":Landroid/view/View;
    new-instance v1, Lcom/tpms/widget/CDialog;

    invoke-virtual {p0}, Lcom/tpms/view/SetDetailActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tpms/widget/CDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/tpms/view/SetDetailActivity;->resetDlg:Lcom/tpms/widget/CDialog;

    .line 351
    invoke-virtual {v1}, Lcom/tpms/widget/CDialog;->show()V

    .line 352
    const v1, 0x7f060050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/tpms/view/SetDetailActivity$1;

    invoke-direct {v2, p0}, Lcom/tpms/view/SetDetailActivity$1;-><init>(Lcom/tpms/view/SetDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    return-void
.end method

.method public tv_version(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0600ba
        }
    .end annotation

    .line 368
    const/4 v0, 0x0

    .line 370
    .local v0, "i":I
    return-void
.end method

.method public tv_pressoffset_click(Landroid/view/View;)V
    .locals 6
    .param p1, "v"
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0600bd
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;
    move-result-object v5

    new-instance v0, Landroid/widget/EditText;
    invoke-direct {v0, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x3002
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;
    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->getPressOffsetString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    new-instance v1, Landroid/app/AlertDialog$Builder;
    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;
    invoke-virtual {v2}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    move-result-object v1

    new-instance v2, Lcom/tpms/view/SetDetailActivity$2;
    invoke-direct {v2, p0, v0}, Lcom/tpms/view/SetDetailActivity$2;-><init>(Lcom/tpms/view/SetDetailActivity;Landroid/widget/EditText;)V

    const-string v3, "OK"
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v1

    const-string v3, "Cancel"
    const/4 v4, 0x0
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public btn_pressoffset_add(Landroid/view/View;)V
    .locals 3
    .param p1, "v"
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0600bf
        }
    .end annotation
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_pressoffset:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;
    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->addPressOffset()I
    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->getPressOffsetString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    return-void
.end method

.method public btn_pressoffset_dec(Landroid/view/View;)V
    .locals 3
    .param p1, "v"
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0600be
        }
    .end annotation
    iget-object v0, p0, Lcom/tpms/view/SetDetailActivity;->tv_pressoffset:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/tpms/view/SetDetailActivity;->mTpms:Lcom/tpms/biz/Tpms;
    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->decPressOffset()I
    invoke-virtual {v1}, Lcom/tpms/biz/Tpms;->getPressOffsetString()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    return-void
.end method
