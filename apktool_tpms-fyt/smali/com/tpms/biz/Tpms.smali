.class public Lcom/tpms/biz/Tpms;
.super Ljava/lang/Object;
.source "Tpms.java"


# static fields
.field private static final BOOT_COMPLATE:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"


# instance fields
.field TAG:Ljava/lang/String;

.field Util:Lcom/syt/tmps/ModelManager;

.field app:Landroid/content/Context;

.field datasrc:Lcom/std/dev/TpmsDataSrc;

.field dlg:Landroid/app/AlertDialog;

.field getTpmsState:Ljava/lang/Runnable;

.field iNotifMsg:Lcom/tpms/biz/INotifMsg;

.field isHaveData:Z

.field mAlarmAgrs:Lcom/tpms/modle/AlarmAgrs;

.field mBackLeft:Lcom/tpms/modle/TiresState;

.field mBackRight:Lcom/tpms/modle/TiresState;

.field mErrorDlg:Lcom/tpms/widget/CDialog2;

.field mErrorToast:Lcom/tpms/widget/ClickToast;

.field mFrontLeft:Lcom/tpms/modle/TiresState;

.field mFrontRight:Lcom/tpms/modle/TiresState;

.field mHeader:Landroid/os/Handler;

.field mHiPressStamp:I

.field mHiTempStamp:I

.field mIsInit:Z

.field mIsPairedId:Z

.field mIsSeedAckOk:Z

.field mLowPressStamp:I

.field protected mPreferences:Landroid/content/SharedPreferences;

.field mSoundPoolCtrl:Lcom/tpms/utils/SoundPoolCtrl;

.field mSpareTire:Lcom/tpms/modle/TiresState;

.field mTimedlg:Lcom/tpms/widget/CDialog2;

.field protected mUI:Lcom/tpms/biz/WaringUI;

.field mWenduDanwei:Ljava/lang/String;

.field mYaliDanwei:Ljava/lang/String;

.field mZhuDongBaojin:I

.field mbForeground:Z

.field mdecode:Lcom/tpms/decode/FrameDecode;

.field mencode:Lcom/tpms/encode/FrameEncode;

.field notificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "Tpms"

    iput-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/biz/Tpms;->Util:Lcom/syt/tmps/ModelManager;

    .line 45
    iput-object v0, p0, Lcom/tpms/biz/Tpms;->app:Landroid/content/Context;

    .line 53
    iput-object v0, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    .line 54
    iput-object v0, p0, Lcom/tpms/biz/Tpms;->mdecode:Lcom/tpms/decode/FrameDecode;

    .line 55
    new-instance v1, Lcom/tpms/modle/AlarmAgrs;

    invoke-direct {v1}, Lcom/tpms/modle/AlarmAgrs;-><init>()V

    iput-object v1, p0, Lcom/tpms/biz/Tpms;->mAlarmAgrs:Lcom/tpms/modle/AlarmAgrs;

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tpms/biz/Tpms;->mIsInit:Z

    .line 65
    const/4 v2, 0x1

    iput v2, p0, Lcom/tpms/biz/Tpms;->mZhuDongBaojin:I

    .line 69
    const-string v3, "\u2103"

    iput-object v3, p0, Lcom/tpms/biz/Tpms;->mWenduDanwei:Ljava/lang/String;

    .line 70
    const-string v3, "Bar"

    iput-object v3, p0, Lcom/tpms/biz/Tpms;->mYaliDanwei:Ljava/lang/String;

    .line 71
    const/16 v3, 0x4b

    iput v3, p0, Lcom/tpms/biz/Tpms;->mHiTempStamp:I

    .line 72
    const/16 v3, 0x136

    iput v3, p0, Lcom/tpms/biz/Tpms;->mHiPressStamp:I

    .line 73
    const/16 v3, 0xb4

    iput v3, p0, Lcom/tpms/biz/Tpms;->mLowPressStamp:I

    .line 80
    iput-object v0, p0, Lcom/tpms/biz/Tpms;->mErrorToast:Lcom/tpms/widget/ClickToast;

    .line 83
    iput-boolean v2, p0, Lcom/tpms/biz/Tpms;->mIsSeedAckOk:Z

    .line 85
    iput-boolean v1, p0, Lcom/tpms/biz/Tpms;->mIsPairedId:Z

    .line 87
    iput-object v0, p0, Lcom/tpms/biz/Tpms;->datasrc:Lcom/std/dev/TpmsDataSrc;

    .line 129
    new-instance v0, Lcom/tpms/biz/Tpms$1;

    invoke-direct {v0, p0}, Lcom/tpms/biz/Tpms$1;-><init>(Lcom/tpms/biz/Tpms;)V

    iput-object v0, p0, Lcom/tpms/biz/Tpms;->getTpmsState:Ljava/lang/Runnable;

    .line 451
    iput-boolean v1, p0, Lcom/tpms/biz/Tpms;->isHaveData:Z

    .line 813
    iput-boolean v1, p0, Lcom/tpms/biz/Tpms;->mbForeground:Z

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/tpms/biz/Tpms;)V
    .locals 0
    .param p0, "x0"    # Lcom/tpms/biz/Tpms;

    .line 39
    invoke-direct {p0}, Lcom/tpms/biz/Tpms;->queryAllState()V

    return-void
.end method

.method private clearAlarmCntrol()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mFrontLeft:Lcom/tpms/modle/TiresState;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    .line 227
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mFrontRight:Lcom/tpms/modle/TiresState;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    .line 228
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mBackLeft:Lcom/tpms/modle/TiresState;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    .line 229
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mBackRight:Lcom/tpms/modle/TiresState;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    .line 230
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mSpareTire:Lcom/tpms/modle/TiresState;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    .line 231
    return-void
.end method

.method private initData()V
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->getHiTemp()I

    move-result v0

    iput v0, p0, Lcom/tpms/biz/Tpms;->mHiTempStamp:I

    .line 116
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->getHiPress()I

    move-result v0

    iput v0, p0, Lcom/tpms/biz/Tpms;->mHiPressStamp:I

    .line 117
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->getLowPress()I

    move-result v0

    iput v0, p0, Lcom/tpms/biz/Tpms;->mLowPressStamp:I

    .line 118
    return-void
.end method

.method private isokTires(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tpms/modle/AlarmCntrol;",
            ">;)Z"
        }
    .end annotation

    .line 906
    .local p1, "tiresTate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tpms/modle/AlarmCntrol;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tpms/modle/AlarmCntrol;

    .line 907
    .local v1, "ac":Lcom/tpms/modle/AlarmCntrol;
    iget-object v2, v1, Lcom/tpms/modle/AlarmCntrol;->mError:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 908
    const/4 v0, 0x0

    return v0

    .line 910
    :cond_0
    iget-object v2, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isokTires ? ac.mError:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/tpms/modle/AlarmCntrol;->mError:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    .end local v1    # "ac":Lcom/tpms/modle/AlarmCntrol;
    goto :goto_0

    .line 914
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private queryAllState()V
    .locals 5

    .line 577
    const/4 v0, 0x7

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 578
    .local v1, "frame":[B
    iget-object v2, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v2, v1}, Lcom/tpms/encode/FrameEncode;->send([B)V

    .line 580
    new-array v2, v0, [B

    fill-array-data v2, :array_1

    .line 581
    .local v2, "frame1":[B
    iget-object v3, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v3, v2}, Lcom/tpms/encode/FrameEncode;->send([B)V

    .line 583
    new-array v3, v0, [B

    fill-array-data v3, :array_2

    .line 584
    .local v3, "frame2":[B
    iget-object v4, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v4, v3}, Lcom/tpms/encode/FrameEncode;->send([B)V

    .line 586
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    .line 587
    .local v0, "frame3":[B
    iget-object v4, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v4, v0}, Lcom/tpms/encode/FrameEncode;->send([B)V

    .line 589
    return-void

    :array_0
    .array-data 1
        -0x56t
        -0x4ft
        -0x5ft
        0x7t
        0x71t
        0x0t
        0x4t
    .end array-data

    :array_1
    .array-data 1
        -0x56t
        -0x4ft
        -0x5ft
        0x7t
        0x71t
        0x1t
        0x4t
    .end array-data

    :array_2
    .array-data 1
        -0x56t
        -0x4ft
        -0x5ft
        0x7t
        0x71t
        0x2t
        0x4t
    .end array-data

    :array_3
    .array-data 1
        -0x56t
        -0x4ft
        -0x5ft
        0x7t
        0x71t
        0x3t
        0x4t
    .end array-data
.end method


# virtual methods
.method protected HeartbeatEventAck()V
    .locals 0

    .line 682
    return-void
.end method

.method protected StopSound(Ljava/lang/String;)V
    .locals 1
    .param p1, "guid"    # Ljava/lang/String;

    .line 806
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mSoundPoolCtrl:Lcom/tpms/utils/SoundPoolCtrl;

    invoke-virtual {v0, p1}, Lcom/tpms/utils/SoundPoolCtrl;->stop(Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method public addHiPressStamp()I
    .locals 2

    .line 733
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "\u8bbe\u7f6e\u6700\u9ad8\u9ad8\u538b\u9600\u503cadd"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget v0, p0, Lcom/tpms/biz/Tpms;->mHiPressStamp:I

    return v0
.end method

.method public addHiTemp()I
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "\u8bbe\u7f6e\u6700\u9ad8\u6e29\u5ea6\u9600\u503c"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget v0, p0, Lcom/tpms/biz/Tpms;->mHiTempStamp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tpms/biz/Tpms;->mHiTempStamp:I

    .line 298
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 299
    iput v1, p0, Lcom/tpms/biz/Tpms;->mHiTempStamp:I

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/tpms/biz/Tpms;->mHiTempStamp:I

    const-string v2, "mHiTempStamp"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 302
    iget v0, p0, Lcom/tpms/biz/Tpms;->mHiTempStamp:I

    return v0
.end method

.method public addLowPressStamp()I
    .locals 2

    .line 746
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "\u8bbe\u7f6e\u6700\u4f4e\u4f4e\u538b\u5ea6\u9600\u503cadd"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget v0, p0, Lcom/tpms/biz/Tpms;->mLowPressStamp:I

    return v0
.end method

.method public closeFloatWindow()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mErrorToast:Lcom/tpms/widget/ClickToast;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/tpms/widget/ClickToast;->hideCustomToast()V

    .line 236
    iput-object v1, p0, Lcom/tpms/biz/Tpms;->mErrorToast:Lcom/tpms/widget/ClickToast;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mTimedlg:Lcom/tpms/widget/CDialog2;

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {v0}, Lcom/tpms/widget/CDialog2;->hideCustomToast()V

    .line 243
    iput-object v1, p0, Lcom/tpms/biz/Tpms;->mTimedlg:Lcom/tpms/widget/CDialog2;

    .line 245
    :cond_1
    return-void
.end method

.method public decHiPressStamp()I
    .locals 2

    .line 740
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "\u8bbe\u7f6e\u6700\u9ad8\u9ad8\u538b\u9600\u503cdec"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget v0, p0, Lcom/tpms/biz/Tpms;->mHiPressStamp:I

    return v0
.end method

.method public decHiTemp()I
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "\u8bbe\u7f6e\u6700\u9ad8\u6e29\u5ea6\u9600\u503c"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget v0, p0, Lcom/tpms/biz/Tpms;->mHiTempStamp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tpms/biz/Tpms;->mHiTempStamp:I

    .line 308
    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 309
    iput v1, p0, Lcom/tpms/biz/Tpms;->mHiTempStamp:I

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/tpms/biz/Tpms;->mHiTempStamp:I

    const-string v2, "mHiTempStamp"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 312
    iget v0, p0, Lcom/tpms/biz/Tpms;->mHiTempStamp:I

    return v0
.end method

.method public decLowPressStamp()I
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "\u8bbe\u7f6e\u6700\u4f4e\u4f4e\u538b\u5ea6\u9600\u503cdec"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget v0, p0, Lcom/tpms/biz/Tpms;->mLowPressStamp:I

    return v0
.end method

.method protected delayMs(I)V
    .locals 2
    .param p1, "ms"    # I

    .line 276
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 280
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public exchangeLeftBackRightBack()V
    .locals 0

    .line 779
    return-void
.end method

.method public exchangeLeftFrontLeftBack()V
    .locals 0

    .line 763
    return-void
.end method

.method public exchangeLeftFrontRightBack()V
    .locals 0

    .line 767
    return-void
.end method

.method public exchangeLeftFrontRightFront()V
    .locals 0

    .line 759
    return-void
.end method

.method public exchangeRightFrontLeftBack()V
    .locals 0

    .line 771
    return-void
.end method

.method public exchangeRightFrontRightBack()V
    .locals 0

    .line 775
    return-void
.end method

.method public exchange_sp_bl()V
    .locals 0

    .line 792
    return-void
.end method

.method public exchange_sp_br()V
    .locals 0

    .line 796
    return-void
.end method

.method public exchange_sp_fl()V
    .locals 0

    .line 784
    return-void
.end method

.method public exchange_sp_fr()V
    .locals 0

    .line 788
    return-void
.end method

.method public getAlarmAgrs()Lcom/tpms/modle/AlarmAgrs;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mAlarmAgrs:Lcom/tpms/modle/AlarmAgrs;

    return-object v0
.end method

.method public getBackLeftState()Lcom/tpms/modle/TiresState;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mBackLeft:Lcom/tpms/modle/TiresState;

    return-object v0
.end method

.method public getBackRightState()Lcom/tpms/modle/TiresState;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mBackRight:Lcom/tpms/modle/TiresState;

    return-object v0
.end method

.method public getBettaWarringEnable()Z
    .locals 3

    .line 667
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "BettaWarringEnable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getConnectWarringEnable()Z
    .locals 3

    .line 671
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ConnectWarringEnable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDatasrc()Lcom/std/dev/TpmsDataSrc;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->datasrc:Lcom/std/dev/TpmsDataSrc;

    return-object v0
.end method

.method public getDecode()Lcom/tpms/decode/FrameDecode;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mdecode:Lcom/tpms/decode/FrameDecode;

    return-object v0
.end method

.method public getFrontLeftState()Lcom/tpms/modle/TiresState;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mFrontLeft:Lcom/tpms/modle/TiresState;

    return-object v0
.end method

.method public getFrontRightState()Lcom/tpms/modle/TiresState;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mFrontRight:Lcom/tpms/modle/TiresState;

    return-object v0
.end method

.method public getHiPress()I
    .locals 3

    .line 700
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mHiPressStamp"

    const/16 v2, 0x136

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHiTemp()I
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mHiTempStamp"

    const/16 v2, 0x4b

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLowPress()I
    .locals 3

    .line 704
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mLowPressStamp"

    const/16 v2, 0xb4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPressString(I)Ljava/lang/String;
    .locals 5
    .param p1, "press"    # I

    iget-object v4, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;
    const-string v3, "mPressOffsetKpa"
    const/4 v2, 0x0
    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    move-result v4
    add-int/2addr p1, v4

    .line 708
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "######0.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 710
    .local v1, "df":Ljava/text/DecimalFormat;
    const-string v2, "Kpa"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 712
    :cond_0
    const-string v2, "Bar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 713
    int-to-float v2, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 714
    :cond_1
    const-string v2, "Psi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 715
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "######0.0"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 716
    int-to-float v2, p1

    const v3, 0x40dca3d7    # 6.895f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 718
    :cond_2
    const-string v2, "error"

    return-object v2
.end method

.method public getPressOffsetKpa()I
    .locals 3

    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mPressOffsetKpa"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPressOffsetString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->getPressOffsetKpa()I

    move-result v0

    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :not_bar

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "######0.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-float v2, v0

    const/high16 v3, 0x42c80000

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :not_bar
    const-string v2, "Psi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :not_psi

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "######0.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-float v2, v0

    const v3, 0x40dca3d7

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :not_psi
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->getPressOffsetKpa()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public addPressOffset()I
    .locals 4

    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->getPressOffsetKpa()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :at_max

    const/16 v1, 0x5

    add-int/2addr v0, v1

    :at_max
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mPressOffsetKpa"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0
.end method

.method public decPressOffset()I
    .locals 4

    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->getPressOffsetKpa()I

    move-result v0

    const/16 v1, -0xc8

    if-le v0, v1, :at_min

    const/16 v1, 0x5

    sub-int/2addr v0, v1

    :at_min
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mPressOffsetKpa"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0
.end method

.method public setPressOffsetFromString(Ljava/lang/String;)V
    .locals 4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_nfe

    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->getYaliDanwei()Ljava/lang/String;
    move-result-object v1

    const-string v2, "Bar"
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :not_bar
    const/high16 v2, 0x42c80000
    mul-float/2addr v0, v2
    float-to-int v0, v0
    goto :save

    :not_bar
    const-string v2, "Psi"
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :not_psi
    const v2, 0x40dca3d7
    mul-float/2addr v0, v2
    float-to-int v0, v0
    goto :save

    :not_psi
    float-to-int v0, v0

    :save
    const/16 v1, 200
    if-le v0, v1, :no_clamp_hi
    move v0, v1
    :no_clamp_hi
    const/16 v1, -200
    if-ge v0, v1, :no_clamp_lo
    move v0, v1
    :no_clamp_lo
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v1
    const-string v2, "mPressOffsetKpa"
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    move-result-object v1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    return-void

    :catch_nfe
    return-void
.end method

.method public getShowUiEnable()Z
    .locals 3

    .line 632
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ShowUiEnable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSoundGuid()Ljava/lang/String;
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mSoundPoolCtrl:Lcom/tpms/utils/SoundPoolCtrl;

    invoke-virtual {v0}, Lcom/tpms/utils/SoundPoolCtrl;->getSoundGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoundWarringEnable()Z
    .locals 4

    .line 636
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SoundWarringEnable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 637
    .local v0, "bret":Z
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSoundWarringEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    return v0
.end method

.method public getSpareTire()Lcom/tpms/modle/TiresState;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mSpareTire:Lcom/tpms/modle/TiresState;

    return-object v0
.end method

.method public getSparetireEnable()Z
    .locals 3

    .line 676
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SparetireEnable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTempString(I)Ljava/lang/String;
    .locals 6
    .param p1, "temp"    # I

    .line 722
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->getWenduDanwei()Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "######0.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 724
    .local v1, "df":Ljava/text/DecimalFormat;
    const-string v2, "\u2103"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 727
    :cond_0
    int-to-double v2, p1

    const-wide v4, 0x3ffccccccccccccdL    # 1.8

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x4040000000000000L    # 32.0

    add-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getWenduDanwei()Ljava/lang/String;
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mWenduDanwei"

    const-string v2, "\u2103"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYaliDanwei()Ljava/lang/String;
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mYaliDanwei:Ljava/lang/String;

    const-string v2, "mYaliDanwei"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZhuDongBaojin()I
    .locals 1

    .line 389
    iget v0, p0, Lcom/tpms/biz/Tpms;->mZhuDongBaojin:I

    return v0
.end method

.method public haveData()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Lcom/tpms/biz/Tpms;->isHaveData:Z

    return v0
.end method

.method public initCodes()V
    .locals 2

    .line 178
    new-instance v0, Lcom/tpms/encode/FrameEncode;

    iget-object v1, p0, Lcom/tpms/biz/Tpms;->app:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tpms/encode/FrameEncode;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    .line 179
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->app:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tpms/encode/FrameEncode;->init(Landroid/content/Context;)V

    .line 182
    new-instance v0, Lcom/tpms/decode/FrameDecode;

    invoke-direct {v0}, Lcom/tpms/decode/FrameDecode;-><init>()V

    iput-object v0, p0, Lcom/tpms/biz/Tpms;->mdecode:Lcom/tpms/decode/FrameDecode;

    .line 183
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->app:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tpms/decode/FrameDecode;->init(Landroid/content/Context;)V

    .line 184
    return-void
.end method

.method public initMisc(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 187
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "\u63e1\u624b"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-boolean v0, p0, Lcom/tpms/biz/Tpms;->mIsInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tpms/biz/Tpms;->initfirst(Landroid/content/Context;)V

    .line 193
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->shakeHand()V

    .line 198
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->queryConfig()V

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tpms/biz/Tpms;->mIsInit:Z

    .line 200
    return-void
.end method

.method public initShakeHand()V
    .locals 0

    .line 209
    return-void
.end method

.method public initSrc(Landroid/content/Context;Lcom/tpms/biz/INotifMsg;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iNotifMsg"    # Lcom/tpms/biz/INotifMsg;

    .line 139
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->datasrc:Lcom/std/dev/TpmsDataSrc;

    if-nez v0, :cond_0

    .line 141
    iput-object p2, p0, Lcom/tpms/biz/Tpms;->iNotifMsg:Lcom/tpms/biz/INotifMsg;

    .line 142
    iput-object p1, p0, Lcom/tpms/biz/Tpms;->app:Landroid/content/Context;

    .line 143
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/tpms/biz/Tpms;->notificationManager:Landroid/app/NotificationManager;

    .line 144
    new-instance v0, Lcom/std/dev/TpmsDataSrcUsb;

    invoke-direct {v0, p1}, Lcom/std/dev/TpmsDataSrcUsb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tpms/biz/Tpms;->datasrc:Lcom/std/dev/TpmsDataSrc;

    .line 145
    invoke-virtual {v0}, Lcom/std/dev/TpmsDataSrc;->init()V

    .line 147
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->initCodes()V

    .line 148
    invoke-virtual {p0, p1}, Lcom/tpms/biz/Tpms;->initMisc(Landroid/content/Context;)V

    .line 151
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->datasrc:Lcom/std/dev/TpmsDataSrc;

    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->getDecode()Lcom/tpms/decode/FrameDecode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tpms/decode/FrameDecode;->getPackBufferFrame()Lcom/tpms/decode/PackBufferFrame;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/std/dev/TpmsDataSrc;->setBufferFrame(Lcom/tpms/decode/PackBufferFrame;)V

    .line 153
    :cond_0
    return-void
.end method

.method protected initfirst(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    new-instance v0, Lcom/tpms/modle/TiresState;

    invoke-direct {v0}, Lcom/tpms/modle/TiresState;-><init>()V

    iput-object v0, p0, Lcom/tpms/biz/Tpms;->mFrontLeft:Lcom/tpms/modle/TiresState;

    .line 99
    new-instance v0, Lcom/tpms/modle/TiresState;

    invoke-direct {v0}, Lcom/tpms/modle/TiresState;-><init>()V

    iput-object v0, p0, Lcom/tpms/biz/Tpms;->mFrontRight:Lcom/tpms/modle/TiresState;

    .line 100
    new-instance v0, Lcom/tpms/modle/TiresState;

    invoke-direct {v0}, Lcom/tpms/modle/TiresState;-><init>()V

    iput-object v0, p0, Lcom/tpms/biz/Tpms;->mBackLeft:Lcom/tpms/modle/TiresState;

    .line 101
    new-instance v0, Lcom/tpms/modle/TiresState;

    invoke-direct {v0}, Lcom/tpms/modle/TiresState;-><init>()V

    iput-object v0, p0, Lcom/tpms/biz/Tpms;->mBackRight:Lcom/tpms/modle/TiresState;

    .line 102
    new-instance v0, Lcom/tpms/modle/TiresState;

    invoke-direct {v0}, Lcom/tpms/modle/TiresState;-><init>()V

    iput-object v0, p0, Lcom/tpms/biz/Tpms;->mSpareTire:Lcom/tpms/modle/TiresState;

    .line 103
    const-string v0, "setting"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    .line 104
    invoke-direct {p0}, Lcom/tpms/biz/Tpms;->initData()V

    .line 105
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 106
    iput-object p1, p0, Lcom/tpms/biz/Tpms;->app:Landroid/content/Context;

    .line 107
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/tpms/biz/Tpms;->notificationManager:Landroid/app/NotificationManager;

    .line 109
    new-instance v0, Lcom/tpms/utils/SoundPoolCtrl2;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tpms/utils/SoundPoolCtrl2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tpms/biz/Tpms;->mSoundPoolCtrl:Lcom/tpms/utils/SoundPoolCtrl;

    .line 112
    return-void
.end method

.method public isAllOk()Z
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mFrontLeft:Lcom/tpms/modle/TiresState;

    iget-object v0, v0, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/tpms/biz/Tpms;->isokTires(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mFrontRight:Lcom/tpms/modle/TiresState;

    iget-object v0, v0, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/tpms/biz/Tpms;->isokTires(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mBackLeft:Lcom/tpms/modle/TiresState;

    iget-object v0, v0, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    .line 898
    invoke-direct {p0, v0}, Lcom/tpms/biz/Tpms;->isokTires(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mBackRight:Lcom/tpms/modle/TiresState;

    iget-object v0, v0, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/tpms/biz/Tpms;->isokTires(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mSpareTire:Lcom/tpms/modle/TiresState;

    iget-object v0, v0, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    .line 899
    invoke-direct {p0, v0}, Lcom/tpms/biz/Tpms;->isokTires(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 897
    :goto_0
    return v0
.end method

.method public isDevCheckOk()Z
    .locals 3

    .line 919
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDevCheckOk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tpms/biz/Tpms;->mIsSeedAckOk:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-boolean v0, p0, Lcom/tpms/biz/Tpms;->mIsSeedAckOk:Z

    return v0
.end method

.method protected isRunningForeground()Z
    .locals 1

    .line 830
    iget-boolean v0, p0, Lcom/tpms/biz/Tpms;->mbForeground:Z

    return v0
.end method

.method public onEventMainThread(Lcom/tpms/modle/AlarmAgrs;)V
    .locals 0
    .param p1, "args"    # Lcom/tpms/modle/AlarmAgrs;

    .line 480
    iput-object p1, p0, Lcom/tpms/biz/Tpms;->mAlarmAgrs:Lcom/tpms/modle/AlarmAgrs;

    .line 481
    return-void
.end method

.method public onEventMainThread(Lcom/tpms/modle/PaireIDOkEvent;)V
    .locals 2
    .param p1, "id"    # Lcom/tpms/modle/PaireIDOkEvent;

    .line 485
    iget v0, p1, Lcom/tpms/modle/PaireIDOkEvent;->tires:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 486
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mFrontLeft:Lcom/tpms/modle/TiresState;

    iget-object v1, p1, Lcom/tpms/modle/PaireIDOkEvent;->mID:Ljava/lang/String;

    iput-object v1, v0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    goto :goto_0

    .line 487
    :cond_0
    iget v0, p1, Lcom/tpms/modle/PaireIDOkEvent;->tires:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 488
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mFrontRight:Lcom/tpms/modle/TiresState;

    iget-object v1, p1, Lcom/tpms/modle/PaireIDOkEvent;->mID:Ljava/lang/String;

    iput-object v1, v0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    goto :goto_0

    .line 489
    :cond_1
    iget v0, p1, Lcom/tpms/modle/PaireIDOkEvent;->tires:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 490
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mBackRight:Lcom/tpms/modle/TiresState;

    iget-object v1, p1, Lcom/tpms/modle/PaireIDOkEvent;->mID:Ljava/lang/String;

    iput-object v1, v0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    goto :goto_0

    .line 491
    :cond_2
    iget v0, p1, Lcom/tpms/modle/PaireIDOkEvent;->tires:I

    if-nez v0, :cond_3

    .line 492
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mBackLeft:Lcom/tpms/modle/TiresState;

    iget-object v1, p1, Lcom/tpms/modle/PaireIDOkEvent;->mID:Ljava/lang/String;

    iput-object v1, v0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    goto :goto_0

    .line 493
    :cond_3
    iget v0, p1, Lcom/tpms/modle/PaireIDOkEvent;->tires:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 494
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mSpareTire:Lcom/tpms/modle/TiresState;

    iget-object v1, p1, Lcom/tpms/modle/PaireIDOkEvent;->mID:Ljava/lang/String;

    iput-object v1, v0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    .line 497
    :cond_4
    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/tpms/modle/QueryIDOkEvent;)V
    .locals 2
    .param p1, "id"    # Lcom/tpms/modle/QueryIDOkEvent;

    .line 501
    iget v0, p1, Lcom/tpms/modle/QueryIDOkEvent;->tires:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mFrontLeft:Lcom/tpms/modle/TiresState;

    iget-object v1, p1, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    iput-object v1, v0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    goto :goto_0

    .line 503
    :cond_0
    iget v0, p1, Lcom/tpms/modle/QueryIDOkEvent;->tires:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 504
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mFrontRight:Lcom/tpms/modle/TiresState;

    iget-object v1, p1, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    iput-object v1, v0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    goto :goto_0

    .line 505
    :cond_1
    iget v0, p1, Lcom/tpms/modle/QueryIDOkEvent;->tires:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 506
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mBackRight:Lcom/tpms/modle/TiresState;

    iget-object v1, p1, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    iput-object v1, v0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    goto :goto_0

    .line 507
    :cond_2
    iget v0, p1, Lcom/tpms/modle/QueryIDOkEvent;->tires:I

    if-nez v0, :cond_3

    .line 508
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mBackLeft:Lcom/tpms/modle/TiresState;

    iget-object v1, p1, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    iput-object v1, v0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    goto :goto_0

    .line 509
    :cond_3
    iget v0, p1, Lcom/tpms/modle/QueryIDOkEvent;->tires:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 510
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mSpareTire:Lcom/tpms/modle/TiresState;

    iget-object v1, p1, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    iput-object v1, v0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    .line 512
    :cond_4
    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/tpms/modle/ShakeHands;)V
    .locals 4
    .param p1, "sh"    # Lcom/tpms/modle/ShakeHands;

    .line 592
    iget v0, p1, Lcom/tpms/modle/ShakeHands;->mShakeHandOK:I

    if-nez v0, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->queryBackLeft()V

    .line 595
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->queryBackRight()V

    .line 596
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->queryConfig()V

    .line 597
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->queryFrontLeft()V

    .line 598
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->queryFrontRight()V

    .line 600
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tpms/biz/Tpms$3;

    invoke-direct {v1, p0}, Lcom/tpms/biz/Tpms$3;-><init>(Lcom/tpms/biz/Tpms;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 609
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tpms/biz/Tpms$4;

    invoke-direct {v1, p0}, Lcom/tpms/biz/Tpms$4;-><init>(Lcom/tpms/biz/Tpms;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 618
    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/tpms/modle/TiresStateEvent;)V
    .locals 6
    .param p1, "alarm"    # Lcom/tpms/modle/TiresStateEvent;

    .line 516
    iget v0, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mFrontLeft:Lcom/tpms/modle/TiresState;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v5, p0, Lcom/tpms/biz/Tpms;->mFrontLeft:Lcom/tpms/modle/TiresState;

    iget-object v5, v5, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    iput-object v5, v0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    goto :goto_0

    .line 518
    :cond_0
    iget v0, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mFrontRight:Lcom/tpms/modle/TiresState;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v5, p0, Lcom/tpms/biz/Tpms;->mFrontRight:Lcom/tpms/modle/TiresState;

    iget-object v5, v5, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    iput-object v5, v0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    goto :goto_0

    .line 520
    :cond_1
    iget v0, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mBackRight:Lcom/tpms/modle/TiresState;

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v5, p0, Lcom/tpms/biz/Tpms;->mBackRight:Lcom/tpms/modle/TiresState;

    iget-object v5, v5, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    iput-object v5, v0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    goto :goto_0

    .line 522
    :cond_2
    iget v0, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mBackLeft:Lcom/tpms/modle/TiresState;

    if-eqz v0, :cond_3

    .line 523
    iget-object v0, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v5, p0, Lcom/tpms/biz/Tpms;->mBackLeft:Lcom/tpms/modle/TiresState;

    iget-object v5, v5, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    iput-object v5, v0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    goto :goto_0

    .line 524
    :cond_3
    iget v0, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mSpareTire:Lcom/tpms/modle/TiresState;

    if-eqz v0, :cond_4

    .line 525
    iget-object v0, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v5, p0, Lcom/tpms/biz/Tpms;->mSpareTire:Lcom/tpms/modle/TiresState;

    iget-object v5, v5, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    iput-object v5, v0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    .line 528
    :cond_4
    :goto_0
    const-string v0, "\u60a8\u7684"

    .line 530
    .local v0, "title":Ljava/lang/String;
    iget v5, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-ne v5, v4, :cond_5

    .line 531
    iget-object v1, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iput-object v1, p0, Lcom/tpms/biz/Tpms;->mFrontLeft:Lcom/tpms/modle/TiresState;

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u524d\u5de6\u8f6e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 533
    :cond_5
    iget v4, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-ne v4, v3, :cond_6

    .line 534
    iget-object v1, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iput-object v1, p0, Lcom/tpms/biz/Tpms;->mFrontRight:Lcom/tpms/modle/TiresState;

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u524d\u53f3\u8f6e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 536
    :cond_6
    iget v3, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-ne v3, v2, :cond_7

    .line 537
    iget-object v1, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iput-object v1, p0, Lcom/tpms/biz/Tpms;->mBackRight:Lcom/tpms/modle/TiresState;

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u540e\u53f3\u8f6e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 539
    :cond_7
    iget v2, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-nez v2, :cond_8

    .line 540
    iget-object v1, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iput-object v1, p0, Lcom/tpms/biz/Tpms;->mBackLeft:Lcom/tpms/modle/TiresState;

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u540e\u5de6\u8f6e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 542
    :cond_8
    iget v2, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-ne v2, v1, :cond_9

    .line 543
    iget-object v1, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iput-object v1, p0, Lcom/tpms/biz/Tpms;->mSpareTire:Lcom/tpms/modle/TiresState;

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5907\u80ce"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    :cond_9
    :goto_1
    iget-object v1, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v1, v1, Lcom/tpms/modle/TiresState;->error:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 548
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->getZhuDongBaojin()I

    move-result v1

    if-nez v1, :cond_a

    .line 549
    return-void

    .line 552
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u68c0\u67e5!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v2, v2, Lcom/tpms/modle/TiresState;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tpms/biz/Tpms;->showAlarmDialog(Ljava/lang/String;)V

    .line 557
    :cond_b
    return-void
.end method

.method public paireBackLeft()V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "\u914d\u5bf9\u5de6\u540e\u8f6eID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 421
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/FrameEncode;->send([B)V

    .line 422
    return-void

    nop

    :array_0
    .array-data 1
        -0x56t
        -0x4ft
        -0x5ft
        0x7t
        0x61t
        0x0t
        -0x7ct
    .end array-data
.end method

.method public paireBackRight()V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "\u914d\u5bf9\u53f3\u540e\u8f6eID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 427
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/FrameEncode;->send([B)V

    .line 428
    return-void

    nop

    :array_0
    .array-data 1
        -0x56t
        -0x4ft
        -0x5ft
        0x7t
        0x61t
        0x3t
        -0x7ct
    .end array-data
.end method

.method public paireFrontLeft()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "\u914d\u5bf9\u524d\u5de6\u8f6eID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 433
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/FrameEncode;->send([B)V

    .line 434
    return-void

    nop

    :array_0
    .array-data 1
        -0x56t
        -0x4ft
        -0x5ft
        0x7t
        0x61t
        0x1t
        -0x7ct
    .end array-data
.end method

.method public paireFrontRight()V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "\u914d\u5bf9\u524d\u53f3ID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 439
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/FrameEncode;->send([B)V

    .line 440
    return-void

    nop

    :array_0
    .array-data 1
        -0x56t
        -0x4ft
        -0x5ft
        0x7t
        0x61t
        0x2t
        -0x7ct
    .end array-data
.end method

.method public paireSpTired()V
    .locals 0

    .line 444
    return-void
.end method

.method protected playerSound(Ljava/lang/String;)V
    .locals 1
    .param p1, "guid"    # Ljava/lang/String;

    .line 799
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->isDevCheckOk()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mSoundPoolCtrl:Lcom/tpms/utils/SoundPoolCtrl;

    invoke-virtual {v0, p1}, Lcom/tpms/utils/SoundPoolCtrl;->player(Ljava/lang/String;)V

    .line 802
    return-void
.end method

.method public queryBackLeft()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "\u67e5\u5de6\u540e\u8f6eID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 396
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/FrameEncode;->send([B)V

    .line 397
    return-void

    nop

    :array_0
    .array-data 1
        -0x56t
        -0x4ft
        -0x5ft
        0x7t
        0x41t
        0x0t
        -0x7ct
    .end array-data
.end method

.method public queryBackRight()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "\u67e5\u53f3\u540e\u8f6eID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 402
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/FrameEncode;->send([B)V

    .line 403
    return-void

    nop

    :array_0
    .array-data 1
        -0x56t
        -0x4ft
        -0x5ft
        0x7t
        0x41t
        0x3t
        -0x7ct
    .end array-data
.end method

.method public queryConfig()V
    .locals 2

    .line 267
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 268
    .local v0, "testQuery":[B
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/FrameEncode;->send([B)V

    .line 271
    return-void

    :array_0
    .array-data 1
        -0x56t
        -0x4ft
        -0x5ft
        0x7t
        0x21t
        0x0t
        0x24t
    .end array-data
.end method

.method public queryFrontLeft()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "\u67e5\u524d\u5de6\u8f6eID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 408
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/FrameEncode;->send([B)V

    .line 409
    return-void

    nop

    :array_0
    .array-data 1
        -0x56t
        -0x4ft
        -0x5ft
        0x7t
        0x41t
        0x1t
        -0x7ct
    .end array-data
.end method

.method public queryFrontRight()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "\u67e5\u524d\u53f3ID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 414
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/FrameEncode;->send([B)V

    .line 415
    return-void

    nop

    :array_0
    .array-data 1
        -0x56t
        -0x4ft
        -0x5ft
        0x7t
        0x41t
        0x2t
        -0x7ct
    .end array-data
.end method

.method public querySensorID()V
    .locals 0

    .line 685
    return-void
.end method

.method public queryVersion()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "\u67e5\u534f\u8bae\u7248\u672c\u53f7"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 258
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/FrameEncode;->send([B)V

    .line 261
    return-void

    nop

    :array_0
    .array-data 1
        -0x56t
        -0x4ft
        -0x5ft
        0x7t
        -0x7ft
        0x0t
        -0x7ct
    .end array-data
.end method

.method public resetAll()V
    .locals 2

    .line 851
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 852
    invoke-direct {p0}, Lcom/tpms/biz/Tpms;->clearAlarmCntrol()V

    .line 854
    const/16 v0, 0x4b

    iput v0, p0, Lcom/tpms/biz/Tpms;->mHiTempStamp:I

    .line 855
    const/16 v0, 0x136

    iput v0, p0, Lcom/tpms/biz/Tpms;->mHiPressStamp:I

    .line 856
    const/16 v0, 0xb4

    iput v0, p0, Lcom/tpms/biz/Tpms;->mLowPressStamp:I

    .line 859
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "reset tpms"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->reset_dev()V

    .line 862
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/tpms/encode/Util;->Sleep(Ljava/lang/Long;)V

    .line 863
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->reset_dev()V

    .line 865
    return-void
.end method

.method public setBettaWarringEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 643
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BettaWarringEnable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 645
    if-nez p1, :cond_0

    .line 646
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->getSoundGuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u7535\u538b\u8fc7\u4f4e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tpms/biz/Tpms;->StopSound(Ljava/lang/String;)V

    .line 650
    :cond_0
    return-void
.end method

.method public setConnectWarringEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 653
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ConnectWarringEnable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 655
    if-nez p1, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->getSoundGuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8fde\u63a5\u5f02\u5e38"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tpms/biz/Tpms;->StopSound(Ljava/lang/String;)V

    .line 660
    :cond_0
    return-void
.end method

.method public setDiya(I)I
    .locals 5
    .param p1, "yali"    # I

    .line 343
    div-int/lit8 p1, p1, 0xa

    .line 344
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "\u8bbe\u7f6e\u6700\u9ad8\u538b\u529b\u9600\u503c"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, -0x56

    aput-byte v3, v1, v2

    const/16 v2, -0x4f

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/4 v2, 0x2

    const/16 v4, -0x5f

    aput-byte v4, v1, v2

    const/4 v2, 0x3

    aput-byte v0, v1, v2

    const/4 v0, 0x4

    const/16 v2, 0x31

    aput-byte v2, v1, v0

    const/4 v0, 0x5

    aput-byte v3, v1, v0

    int-to-byte v0, p1

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    const/4 v0, 0x7

    const/16 v2, -0x7c

    aput-byte v2, v1, v0

    move-object v0, v1

    .line 346
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/FrameEncode;->send([B)V

    .line 347
    mul-int/lit8 v1, p1, 0xa

    return v1
.end method

.method public setForeground(Z)V
    .locals 0
    .param p1, "bForeground"    # Z

    .line 816
    iput-boolean p1, p0, Lcom/tpms/biz/Tpms;->mbForeground:Z

    .line 817
    return-void
.end method

.method public setGaoya(I)I
    .locals 5
    .param p1, "yali"    # I

    .line 333
    div-int/lit8 p1, p1, 0xa

    .line 334
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "\u8bbe\u7f6e\u6700\u9ad8\u538b\u529b\u9600\u503c"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/16 v0, 0x8

    new-array v1, v0, [B

    const/16 v2, -0x56

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, -0x4f

    aput-byte v4, v1, v2

    const/4 v2, 0x2

    const/16 v4, -0x5f

    aput-byte v4, v1, v2

    const/4 v2, 0x3

    aput-byte v0, v1, v2

    const/4 v0, 0x4

    const/16 v2, 0x31

    aput-byte v2, v1, v0

    const/4 v0, 0x5

    aput-byte v3, v1, v0

    int-to-byte v0, p1

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    const/4 v0, 0x7

    const/16 v2, -0x7c

    aput-byte v2, v1, v0

    move-object v0, v1

    .line 336
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/FrameEncode;->send([B)V

    .line 338
    mul-int/lit8 v1, p1, 0xa

    return v1
.end method

.method public setHiPressDef()I
    .locals 1

    .line 692
    const/4 v0, 0x0

    return v0
.end method

.method public setHiTempDef()I
    .locals 1

    .line 688
    const/4 v0, 0x0

    return v0
.end method

.method public setLowPressDef()I
    .locals 1

    .line 696
    const/4 v0, 0x0

    return v0
.end method

.method public setNextWenduDanwei()Ljava/lang/String;
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mWenduDanwei:Ljava/lang/String;

    const-string v1, "\u2103"

    if-ne v0, v1, :cond_0

    .line 322
    const-string v0, "\u2109"

    iput-object v0, p0, Lcom/tpms/biz/Tpms;->mWenduDanwei:Ljava/lang/String;

    goto :goto_0

    .line 324
    :cond_0
    iput-object v1, p0, Lcom/tpms/biz/Tpms;->mWenduDanwei:Ljava/lang/String;

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mWenduDanwei:Ljava/lang/String;

    const-string v2, "mWenduDanwei"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 327
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mWenduDanwei:Ljava/lang/String;

    return-object v0
.end method

.method public setNextYaliDanwei()Ljava/lang/String;
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mYaliDanwei:Ljava/lang/String;

    const-string v1, "Bar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Psi"

    if-eqz v0, :cond_0

    .line 358
    iput-object v2, p0, Lcom/tpms/biz/Tpms;->mYaliDanwei:Ljava/lang/String;

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mYaliDanwei:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    const-string v0, "Kpa"

    iput-object v0, p0, Lcom/tpms/biz/Tpms;->mYaliDanwei:Ljava/lang/String;

    goto :goto_0

    .line 362
    :cond_1
    iput-object v1, p0, Lcom/tpms/biz/Tpms;->mYaliDanwei:Ljava/lang/String;

    .line 364
    :goto_0
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mYaliDanwei:Ljava/lang/String;

    const-string v2, "mYaliDanwei"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 365
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mYaliDanwei:Ljava/lang/String;

    return-object v0
.end method

.method public setPreYaliDanwei()Ljava/lang/String;
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mYaliDanwei:Ljava/lang/String;

    const-string v1, "Bar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const-string v0, "Kpa"

    iput-object v0, p0, Lcom/tpms/biz/Tpms;->mYaliDanwei:Ljava/lang/String;

    goto :goto_0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mYaliDanwei:Ljava/lang/String;

    const-string v2, "Psi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iput-object v1, p0, Lcom/tpms/biz/Tpms;->mYaliDanwei:Ljava/lang/String;

    goto :goto_0

    .line 376
    :cond_1
    iput-object v2, p0, Lcom/tpms/biz/Tpms;->mYaliDanwei:Ljava/lang/String;

    .line 378
    :goto_0
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mYaliDanwei:Ljava/lang/String;

    const-string v2, "mYaliDanwei"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 379
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mYaliDanwei:Ljava/lang/String;

    return-object v0
.end method

.method public setShowUiEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 621
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ShowUiEnable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 622
    return-void
.end method

.method public setSoundWarringEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 625
    if-nez p1, :cond_0

    .line 626
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tpms/biz/Tpms;->StopSound(Ljava/lang/String;)V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SoundWarringEnable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 629
    return-void
.end method

.method public setSparetireEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 663
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SparetireEnable"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 664
    return-void
.end method

.method public setWendu(I)I
    .locals 4
    .param p1, "wendu"    # I

    .line 284
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "\u8bbe\u7f6e\u6700\u9ad8\u6e29\u5ea6\u9600\u503c"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, -0x56

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, -0x4f

    aput-byte v3, v1, v2

    const/16 v2, -0x5f

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    const/4 v2, 0x3

    aput-byte v0, v1, v2

    const/4 v0, 0x4

    const/16 v2, 0x31

    aput-byte v2, v1, v0

    const/4 v0, 0x5

    aput-byte v3, v1, v0

    int-to-byte v0, p1

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    const/4 v0, 0x7

    const/16 v2, -0x7c

    aput-byte v2, v1, v0

    move-object v0, v1

    .line 286
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/FrameEncode;->send([B)V

    .line 287
    return p1
.end method

.method public setZhuDongBaojin(I)V
    .locals 0
    .param p1, "zhudong"    # I

    .line 384
    iput p1, p0, Lcom/tpms/biz/Tpms;->mZhuDongBaojin:I

    .line 386
    return-void
.end method

.method public shakeHand()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "shakeHand \u63e1\u624b"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 250
    .local v0, "frame":[B
    iget-object v1, p0, Lcom/tpms/biz/Tpms;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v1, v0}, Lcom/tpms/encode/FrameEncode;->send([B)V

    .line 252
    return-void

    nop

    :array_0
    .array-data 1
        -0x56t
        -0x4ft
        -0x5ft
        0x7t
        0x11t
        0x0t
        0x14t
    .end array-data
.end method

.method protected showAlarmDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 562
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tpms/biz/Tpms;->app:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 563
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/tpms/biz/Tpms$2;

    invoke-direct {v1, p0}, Lcom/tpms/biz/Tpms$2;-><init>(Lcom/tpms/biz/Tpms;)V

    .line 564
    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tpms/biz/Tpms;->dlg:Landroid/app/AlertDialog;

    .line 573
    return-void
.end method

.method protected showErrorNotifMsg()V
    .locals 2

    .line 875
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "showErrorNotifMsg "

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->isDevCheckOk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "showErrorNotifMsg !isDevCheckOk()"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    return-void

    .line 881
    :cond_0
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->showErrorNotifMsg2()V

    .line 882
    return-void
.end method

.method public showErrorNotifMsg2()V
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->iNotifMsg:Lcom/tpms/biz/INotifMsg;

    if-eqz v0, :cond_0

    .line 887
    invoke-interface {v0}, Lcom/tpms/biz/INotifMsg;->showErrorNotifMsg()V

    .line 890
    :cond_0
    return-void
.end method

.method public showNormalNotifMsg()V
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->iNotifMsg:Lcom/tpms/biz/INotifMsg;

    if-eqz v0, :cond_0

    .line 870
    invoke-interface {v0}, Lcom/tpms/biz/INotifMsg;->showNormalNotifMsg()V

    .line 872
    :cond_0
    return-void
.end method

.method public startTpms()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "startTpms"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->datasrc:Lcom/std/dev/TpmsDataSrc;

    invoke-virtual {v0}, Lcom/std/dev/TpmsDataSrc;->start()V

    .line 165
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->initShakeHand()V

    .line 166
    return-void
.end method

.method public stopPaire()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "stopPaire"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public stopTpms()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->TAG:Ljava/lang/String;

    const-string v1, "stopTpms"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/tpms/biz/Tpms;->datasrc:Lcom/std/dev/TpmsDataSrc;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/std/dev/TpmsDataSrc;->stop()V

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->unintShakeHand()V

    .line 175
    return-void
.end method

.method public unInitMisc()V
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/tpms/biz/Tpms;->mIsInit:Z

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/tpms/biz/Tpms;->StopSound(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms;->closeFloatWindow()V

    .line 219
    invoke-direct {p0}, Lcom/tpms/biz/Tpms;->clearAlarmCntrol()V

    .line 221
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tpms/biz/Tpms;->mIsInit:Z

    .line 223
    return-void
.end method

.method public unintShakeHand()V
    .locals 0

    .line 205
    return-void
.end method
