.class public Lcom/tpms/biz/Tpms3;
.super Lcom/tpms/biz/Tpms;
.source "Tpms3.java"


# static fields
.field private static final BOOT_COMPLATE:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field static final MaxHiPress:I = 0x320

.field static final MaxLowPress:I = 0x316

.field static final MinHiPress:I = 0xa

.field static final MinLowPress:I

.field private static final homeListenerReceiver:Landroid/content/BroadcastReceiver;

.field public static stpms3:Lcom/tpms/biz/Tpms3;


# instance fields
.field CheckEncryptionTime:Ljava/lang/Runnable;

.field TAG:Ljava/lang/String;

.field btn_click:Landroid/view/View$OnClickListener;

.field mConnectErrorDlg:Lcom/tpms/widget/CDialog2;

.field mCurrentErrCtrl:Lcom/tpms/modle/AlarmCntrol;

.field mDataCheckHander:Landroid/os/Handler;

.field mDataCheckTimer:Ljava/lang/Runnable;

.field mErrorCount:I

.field mHeartbeat:Ljava/lang/Runnable;

.field mTimerCheckSeed:Landroid/os/Handler;

.field mZhuDongBaojin:I

.field startDataTime:J

.field time:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/tpms/biz/Tpms3;->stpms3:Lcom/tpms/biz/Tpms3;

    .line 934
    new-instance v0, Lcom/tpms/biz/Tpms3$8;

    invoke-direct {v0}, Lcom/tpms/biz/Tpms3$8;-><init>()V

    sput-object v0, Lcom/tpms/biz/Tpms3;->homeListenerReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 93
    invoke-direct {p0}, Lcom/tpms/biz/Tpms;-><init>()V

    .line 55
    const-string v0, "Tpms3"

    iput-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/biz/Tpms3;->mCurrentErrCtrl:Lcom/tpms/modle/AlarmCntrol;

    .line 61
    const/4 v1, 0x1

    iput v1, p0, Lcom/tpms/biz/Tpms3;->mZhuDongBaojin:I

    .line 62
    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/tpms/biz/Tpms3;->time:B

    .line 63
    iput v1, p0, Lcom/tpms/biz/Tpms3;->mErrorCount:I

    .line 65
    iput-object v0, p0, Lcom/tpms/biz/Tpms3;->mTimerCheckSeed:Landroid/os/Handler;

    .line 69
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/tpms/biz/Tpms3;->startDataTime:J

    .line 71
    iput-object v0, p0, Lcom/tpms/biz/Tpms3;->mConnectErrorDlg:Lcom/tpms/widget/CDialog2;

    .line 129
    new-instance v0, Lcom/tpms/biz/Tpms3$1;

    invoke-direct {v0, p0}, Lcom/tpms/biz/Tpms3$1;-><init>(Lcom/tpms/biz/Tpms3;)V

    iput-object v0, p0, Lcom/tpms/biz/Tpms3;->mDataCheckTimer:Ljava/lang/Runnable;

    .line 905
    new-instance v0, Lcom/tpms/biz/Tpms3$7;

    invoke-direct {v0, p0}, Lcom/tpms/biz/Tpms3$7;-><init>(Lcom/tpms/biz/Tpms3;)V

    iput-object v0, p0, Lcom/tpms/biz/Tpms3;->btn_click:Landroid/view/View$OnClickListener;

    .line 1062
    new-instance v0, Lcom/tpms/biz/Tpms3$9;

    invoke-direct {v0, p0}, Lcom/tpms/biz/Tpms3$9;-><init>(Lcom/tpms/biz/Tpms3;)V

    iput-object v0, p0, Lcom/tpms/biz/Tpms3;->mHeartbeat:Ljava/lang/Runnable;

    .line 1088
    new-instance v0, Lcom/tpms/biz/Tpms3$10;

    invoke-direct {v0, p0}, Lcom/tpms/biz/Tpms3$10;-><init>(Lcom/tpms/biz/Tpms3;)V

    iput-object v0, p0, Lcom/tpms/biz/Tpms3;->CheckEncryptionTime:Ljava/lang/Runnable;

    .line 94
    iput v1, p0, Lcom/tpms/biz/Tpms3;->mErrorCount:I

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    iput-byte v0, p0, Lcom/tpms/biz/Tpms3;->time:B

    .line 96
    return-void
.end method

.method private IsOkClearInTimeAndCUI(Lcom/tpms/modle/TiresState;Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # Lcom/tpms/modle/TiresState;
    .param p2, "tires_key"    # Ljava/lang/String;

    .line 667
    const-string v0, ""

    .line 668
    .local v0, "errorKey":Ljava/lang/String;
    const/4 v1, 0x0

    .line 669
    .local v1, "stateChangeOk":Z
    iget-boolean v2, p1, Lcom/tpms/modle/TiresState;->NoSignal:Z

    if-nez v2, :cond_0

    .line 672
    const-string v0, "NoSignal"

    .line 673
    invoke-direct {p0, v0, p1}, Lcom/tpms/biz/Tpms3;->resetInTIme(Ljava/lang/String;Lcom/tpms/modle/TiresState;)V

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tpms/biz/Tpms3;->clearUIAndSound(Ljava/lang/String;)V

    .line 678
    :cond_0
    iget-boolean v2, p1, Lcom/tpms/modle/TiresState;->Leakage:Z

    if-nez v2, :cond_1

    .line 680
    const-string v0, "Leakage"

    .line 681
    invoke-direct {p0, v0, p1}, Lcom/tpms/biz/Tpms3;->resetInTIme(Ljava/lang/String;Lcom/tpms/modle/TiresState;)V

    .line 683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tpms/biz/Tpms3;->clearUIAndSound(Ljava/lang/String;)V

    .line 685
    :cond_1
    iget v2, p1, Lcom/tpms/modle/TiresState;->AirPressure:I

    iget v3, p0, Lcom/tpms/biz/Tpms3;->mHiPressStamp:I

    if-ge v2, v3, :cond_2

    .line 687
    const-string v0, "mHiPressStamp"

    .line 688
    invoke-direct {p0, v0, p1}, Lcom/tpms/biz/Tpms3;->resetInTIme(Ljava/lang/String;Lcom/tpms/modle/TiresState;)V

    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tpms/biz/Tpms3;->clearUIAndSound(Ljava/lang/String;)V

    .line 691
    :cond_2
    iget v2, p1, Lcom/tpms/modle/TiresState;->AirPressure:I

    iget v3, p0, Lcom/tpms/biz/Tpms3;->mLowPressStamp:I

    if-le v2, v3, :cond_3

    .line 693
    const-string v0, "mLowPressStamp"

    .line 694
    invoke-direct {p0, v0, p1}, Lcom/tpms/biz/Tpms3;->resetInTIme(Ljava/lang/String;Lcom/tpms/modle/TiresState;)V

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tpms/biz/Tpms3;->clearUIAndSound(Ljava/lang/String;)V

    .line 698
    :cond_3
    iget v2, p1, Lcom/tpms/modle/TiresState;->Temperature:I

    iget v3, p0, Lcom/tpms/biz/Tpms3;->mHiTempStamp:I

    if-ge v2, v3, :cond_4

    .line 700
    const-string v0, "mHiTempStamp"

    .line 701
    invoke-direct {p0, v0, p1}, Lcom/tpms/biz/Tpms3;->resetInTIme(Ljava/lang/String;Lcom/tpms/modle/TiresState;)V

    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tpms/biz/Tpms3;->clearUIAndSound(Ljava/lang/String;)V

    .line 706
    :cond_4
    iget-boolean v2, p1, Lcom/tpms/modle/TiresState;->LowPower:Z

    if-nez v2, :cond_5

    .line 709
    const-string v0, "LowPower"

    .line 710
    invoke-direct {p0, v0, p1}, Lcom/tpms/biz/Tpms3;->resetInTIme(Ljava/lang/String;Lcom/tpms/modle/TiresState;)V

    .line 712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tpms/biz/Tpms3;->clearUIAndSound(Ljava/lang/String;)V

    .line 715
    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/tpms/biz/Tpms3;)V
    .locals 0
    .param p0, "x0"    # Lcom/tpms/biz/Tpms3;

    .line 54
    invoke-direct {p0}, Lcom/tpms/biz/Tpms3;->showConnectErrDlg()V

    return-void
.end method

.method static synthetic access$100(Lcom/tpms/biz/Tpms3;)V
    .locals 0
    .param p0, "x0"    # Lcom/tpms/biz/Tpms3;

    .line 54
    invoke-direct {p0}, Lcom/tpms/biz/Tpms3;->startMainActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/tpms/biz/Tpms3;)V
    .locals 0
    .param p0, "x0"    # Lcom/tpms/biz/Tpms3;

    .line 54
    invoke-direct {p0}, Lcom/tpms/biz/Tpms3;->showTimeDialog()V

    return-void
.end method

.method static synthetic access$300()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 54
    sget-object v0, Lcom/tpms/biz/Tpms3;->homeListenerReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tpms/biz/Tpms3;)V
    .locals 0
    .param p0, "x0"    # Lcom/tpms/biz/Tpms3;

    .line 54
    invoke-direct {p0}, Lcom/tpms/biz/Tpms3;->showErrorDlg()V

    return-void
.end method

.method private clearUIAndSound(Ljava/lang/String;)V
    .locals 2
    .param p1, "guid"    # Ljava/lang/String;

    .line 719
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mErrorToast:Lcom/tpms/widget/ClickToast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mErrorToast:Lcom/tpms/widget/ClickToast;

    invoke-virtual {v0}, Lcom/tpms/widget/ClickToast;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "================:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "testtpms"

    invoke-static {v1, v0}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mErrorToast:Lcom/tpms/widget/ClickToast;

    invoke-virtual {v0}, Lcom/tpms/widget/ClickToast;->hideCustomToast()V

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/biz/Tpms3;->mErrorToast:Lcom/tpms/widget/ClickToast;

    .line 723
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mTimedlg:Lcom/tpms/widget/CDialog2;

    if-eqz v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mTimedlg:Lcom/tpms/widget/CDialog2;

    invoke-virtual {v1}, Lcom/tpms/widget/CDialog2;->hideCustomToast()V

    .line 725
    iput-object v0, p0, Lcom/tpms/biz/Tpms3;->mTimedlg:Lcom/tpms/widget/CDialog2;

    .line 730
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tpms/biz/Tpms3;->StopSound(Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method public static getInstant()Lcom/tpms/biz/Tpms3;
    .locals 1

    .line 83
    sget-object v0, Lcom/tpms/biz/Tpms3;->stpms3:Lcom/tpms/biz/Tpms3;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/tpms/biz/Tpms3;

    invoke-direct {v0}, Lcom/tpms/biz/Tpms3;-><init>()V

    sput-object v0, Lcom/tpms/biz/Tpms3;->stpms3:Lcom/tpms/biz/Tpms3;

    .line 88
    :cond_0
    sget-object v0, Lcom/tpms/biz/Tpms3;->stpms3:Lcom/tpms/biz/Tpms3;

    return-object v0
.end method

.method private hideConnectErrDlg()V
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mConnectErrorDlg:Lcom/tpms/widget/CDialog2;

    if-nez v0, :cond_0

    .line 832
    return-void

    .line 835
    :cond_0
    invoke-virtual {v0}, Lcom/tpms/widget/CDialog2;->hideCustomToast()V

    .line 836
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/biz/Tpms3;->mConnectErrorDlg:Lcom/tpms/widget/CDialog2;

    .line 837
    return-void
.end method

.method private isAllTiresOk()Z
    .locals 7

    .line 435
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tpms/modle/TiresState;

    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mFrontLeft:Lcom/tpms/modle/TiresState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mBackLeft:Lcom/tpms/modle/TiresState;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mBackRight:Lcom/tpms/modle/TiresState;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mFrontRight:Lcom/tpms/modle/TiresState;

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 436
    .local v0, "triess":[Lcom/tpms/modle/TiresState;
    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    .line 437
    .local v5, "tries":Lcom/tpms/modle/TiresState;
    invoke-direct {p0, v5}, Lcom/tpms/biz/Tpms3;->thisTiresOk(Lcom/tpms/modle/TiresState;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 438
    return v2

    .line 436
    .end local v5    # "tries":Lcom/tpms/modle/TiresState;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 441
    :cond_1
    return v3
.end method

.method private isTimeOut(Ljava/lang/String;JLjava/lang/String;Lcom/tpms/modle/TiresStateEvent;)Z
    .locals 17
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "curTime"    # J
    .param p4, "errorKey"    # Ljava/lang/String;
    .param p5, "tevent"    # Lcom/tpms/modle/TiresStateEvent;

    .line 470
    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 471
    return v5

    .line 474
    :cond_0
    move-object/from16 v4, p5

    iget-object v6, v4, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    .line 475
    .local v6, "state":Lcom/tpms/modle/TiresState;
    iget-object v7, v6, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    .line 477
    .local v7, "ctrl":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tpms/modle/AlarmCntrol;>;"
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tpms/modle/AlarmCntrol;

    .line 478
    .local v8, "Cntrol":Lcom/tpms/modle/AlarmCntrol;
    const/4 v9, 0x1

    const-string v10, "ttimeout"

    if-nez v8, :cond_1

    .line 480
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " no record is time out"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return v9

    .line 484
    :cond_1
    iget-wide v11, v8, Lcom/tpms/modle/AlarmCntrol;->mTimeStamp:J

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-eqz v15, :cond_3

    iget-wide v11, v8, Lcom/tpms/modle/AlarmCntrol;->mTimeStamp:J

    sub-long v11, v1, v11

    iget-wide v13, v8, Lcom/tpms/modle/AlarmCntrol;->mTimeInterval:J

    cmp-long v16, v11, v13

    if-lez v16, :cond_2

    goto :goto_0

    .line 496
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " no time out;Cntrol.mTimeInterval:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v8, Lcom/tpms/modle/AlarmCntrol;->mTimeInterval:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    return v5

    .line 486
    :cond_3
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ";dat time:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v8, Lcom/tpms/modle/AlarmCntrol;->mTimeStamp:J

    sub-long v11, v1, v11

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ";Cntrol.mTimeStamp:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v8, Lcom/tpms/modle/AlarmCntrol;->mTimeStamp:J

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ";Cntrol.mTimeInterval:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v8, Lcom/tpms/modle/AlarmCntrol;->mTimeInterval:J

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ";curTime:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-wide/16 v10, 0x0

    iput-wide v10, v8, Lcom/tpms/modle/AlarmCntrol;->mTimeInterval:J

    .line 492
    return v9
.end method

.method private queryAllState()V
    .locals 2

    .line 955
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "queryAllState "

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    return-void
.end method

.method private resetInTIme(Ljava/lang/String;Lcom/tpms/modle/TiresState;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/tpms/modle/TiresState;

    .line 735
    iget-object v0, p2, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tpms/modle/AlarmCntrol;

    .line 736
    .local v0, "ctrl":Lcom/tpms/modle/AlarmCntrol;
    if-eqz v0, :cond_0

    .line 738
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/tpms/modle/AlarmCntrol;->mTimeInterval:J

    .line 740
    :cond_0
    return-void
.end method

.method private showConnectErrDlg()V
    .locals 3

    .line 808
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "showConnectErrDlg1"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mConnectErrorDlg:Lcom/tpms/widget/CDialog2;

    if-eqz v0, :cond_0

    .line 810
    return-void

    .line 811
    :cond_0
    iget-boolean v0, p0, Lcom/tpms/biz/Tpms3;->mIsPairedId:Z

    if-eqz v0, :cond_1

    .line 812
    return-void

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "showConnectErrDlg2"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f080008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 818
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/tpms/widget/CDialog2;->makeToast(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)Lcom/tpms/widget/CDialog2;

    move-result-object v1

    iput-object v1, p0, Lcom/tpms/biz/Tpms3;->mConnectErrorDlg:Lcom/tpms/widget/CDialog2;

    .line 819
    const v1, 0x7f060024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/tpms/biz/Tpms3$5;

    invoke-direct {v2, p0}, Lcom/tpms/biz/Tpms3$5;-><init>(Lcom/tpms/biz/Tpms3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 827
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mConnectErrorDlg:Lcom/tpms/widget/CDialog2;

    invoke-virtual {v1}, Lcom/tpms/widget/CDialog2;->show()V

    .line 828
    return-void
.end method

.method private showErrorDlg()V
    .locals 5

    .line 780
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mErrorDlg:Lcom/tpms/widget/CDialog2;

    if-eqz v0, :cond_0

    .line 781
    return-void

    .line 783
    :cond_0
    iget-boolean v0, p0, Lcom/tpms/biz/Tpms3;->mIsPairedId:Z

    if-eqz v0, :cond_1

    return-void

    .line 785
    :cond_1
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v2, "showErrorDlg"

    invoke-static {v1, v2}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f080009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 790
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/tpms/widget/CDialog2;->makeToast(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)Lcom/tpms/widget/CDialog2;

    move-result-object v2

    iput-object v2, p0, Lcom/tpms/biz/Tpms3;->mErrorDlg:Lcom/tpms/widget/CDialog2;

    .line 791
    const v2, 0x7f060024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/tpms/biz/Tpms3$4;

    invoke-direct {v3, p0}, Lcom/tpms/biz/Tpms3$4;-><init>(Lcom/tpms/biz/Tpms3;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms3;->showErrorNotifMsg2()V

    .line 800
    iget-object v2, p0, Lcom/tpms/biz/Tpms3;->mErrorDlg:Lcom/tpms/widget/CDialog2;

    invoke-virtual {v2}, Lcom/tpms/widget/CDialog2;->show()V

    .line 801
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v2

    new-instance v3, Lcom/tpms/modle/TpmsDevErrorEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/tpms/modle/TpmsDevErrorEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 804
    return-void
.end method

.method private showErrorToast()V
    .locals 4

    .line 750
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms3;->isDevCheckOk()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 752
    :cond_0
    new-instance v0, Lcom/tpms/widget/ClickToast;

    invoke-direct {v0}, Lcom/tpms/widget/ClickToast;-><init>()V

    iput-object v0, p0, Lcom/tpms/biz/Tpms3;->mErrorToast:Lcom/tpms/widget/ClickToast;

    .line 754
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f080005

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 755
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f060093

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/tpms/biz/Tpms3$2;

    invoke-direct {v2, p0}, Lcom/tpms/biz/Tpms3$2;-><init>(Lcom/tpms/biz/Tpms3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    const v1, 0x7f06004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/tpms/biz/Tpms3$3;

    invoke-direct {v2, p0}, Lcom/tpms/biz/Tpms3$3;-><init>(Lcom/tpms/biz/Tpms3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 772
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mErrorToast:Lcom/tpms/widget/ClickToast;

    iget-object v2, p0, Lcom/tpms/biz/Tpms3;->mCurrentErrCtrl:Lcom/tpms/modle/AlarmCntrol;

    iget-object v2, v2, Lcom/tpms/modle/AlarmCntrol;->mErrorKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tpms/widget/ClickToast;->setGuid(Ljava/lang/String;)V

    .line 773
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mErrorToast:Lcom/tpms/widget/ClickToast;

    iget-object v2, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tpms/biz/Tpms3;->mCurrentErrCtrl:Lcom/tpms/modle/AlarmCntrol;

    iget-object v3, v3, Lcom/tpms/modle/AlarmCntrol;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/tpms/widget/ClickToast;->initToast(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 774
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mErrorToast:Lcom/tpms/widget/ClickToast;

    invoke-virtual {v1}, Lcom/tpms/widget/ClickToast;->show()V

    .line 775
    return-void
.end method

.method private showTimeDialog()V
    .locals 8

    .line 840
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f08001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 843
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/tpms/widget/CDialog2;->makeToast(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)Lcom/tpms/widget/CDialog2;

    move-result-object v1

    iput-object v1, p0, Lcom/tpms/biz/Tpms3;->mTimedlg:Lcom/tpms/widget/CDialog2;

    .line 845
    const v1, 0x7f060080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 846
    .local v1, "v0":Landroid/view/View;
    const v2, 0x7f060081

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 847
    .local v2, "v1":Landroid/view/View;
    const v3, 0x7f060082

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 848
    .local v3, "v2":Landroid/view/View;
    const v4, 0x7f060083

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 850
    .local v4, "v3":Landroid/view/View;
    iget-object v5, p0, Lcom/tpms/biz/Tpms3;->btn_click:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 851
    iget-object v5, p0, Lcom/tpms/biz/Tpms3;->btn_click:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 852
    iget-object v5, p0, Lcom/tpms/biz/Tpms3;->btn_click:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 853
    iget-object v5, p0, Lcom/tpms/biz/Tpms3;->btn_click:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 861
    const v5, 0x7f0600a2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/tpms/biz/Tpms3$6;

    invoke-direct {v6, p0}, Lcom/tpms/biz/Tpms3$6;-><init>(Lcom/tpms/biz/Tpms3;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 884
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 885
    .local v5, "homeFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    sget-object v7, Lcom/tpms/biz/Tpms3;->homeListenerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 887
    iget-object v6, p0, Lcom/tpms/biz/Tpms3;->mTimedlg:Lcom/tpms/widget/CDialog2;

    invoke-virtual {v6}, Lcom/tpms/widget/CDialog2;->show()V

    .line 903
    return-void
.end method

.method private startMainActivity()V
    .locals 3

    .line 743
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    const-class v2, Lcom/tpms/view/TpmsMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 744
    .local v0, "inte":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 745
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 746
    return-void
.end method

.method private thisTiresOk(Lcom/tpms/modle/TiresState;)Z
    .locals 3
    .param p1, "state"    # Lcom/tpms/modle/TiresState;

    .line 445
    iget-boolean v0, p1, Lcom/tpms/modle/TiresState;->NoSignal:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 446
    return v1

    .line 448
    :cond_0
    iget-boolean v0, p1, Lcom/tpms/modle/TiresState;->Leakage:Z

    if-eqz v0, :cond_1

    .line 449
    return v1

    .line 451
    :cond_1
    iget v0, p1, Lcom/tpms/modle/TiresState;->AirPressure:I

    iget v2, p0, Lcom/tpms/biz/Tpms3;->mHiPressStamp:I

    if-lt v0, v2, :cond_2

    .line 452
    return v1

    .line 454
    :cond_2
    iget v0, p1, Lcom/tpms/modle/TiresState;->AirPressure:I

    iget v2, p0, Lcom/tpms/biz/Tpms3;->mLowPressStamp:I

    if-gt v0, v2, :cond_3

    .line 455
    return v1

    .line 457
    :cond_3
    iget v0, p1, Lcom/tpms/modle/TiresState;->Temperature:I

    iget v2, p0, Lcom/tpms/biz/Tpms3;->mHiTempStamp:I

    if-lt v0, v2, :cond_4

    .line 458
    return v1

    .line 460
    :cond_4
    iget-boolean v0, p1, Lcom/tpms/modle/TiresState;->LowPower:Z

    if-eqz v0, :cond_5

    .line 461
    return v1

    .line 464
    :cond_5
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected Heartbeat()V
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->HeartbeatEventAck()V

    .line 972
    return-void
.end method

.method protected HeartbeatEventAck()V
    .locals 1

    .line 966
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->HeartbeatEventAck()V

    .line 967
    return-void
.end method

.method public addHiPressStamp()I
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "\u8bbe\u7f6e\u6700\u9ad8\u9ad8\u538b\u9600\u503cadd"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget v0, p0, Lcom/tpms/biz/Tpms3;->mHiPressStamp:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/tpms/biz/Tpms3;->mHiPressStamp:I

    .line 188
    iget v0, p0, Lcom/tpms/biz/Tpms3;->mHiPressStamp:I

    const/16 v1, 0x320

    if-le v0, v1, :cond_0

    .line 189
    iput v1, p0, Lcom/tpms/biz/Tpms3;->mHiPressStamp:I

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/tpms/biz/Tpms3;->mHiPressStamp:I

    const-string v2, "mHiPressStamp"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    iget v0, p0, Lcom/tpms/biz/Tpms3;->mHiPressStamp:I

    return v0
.end method

.method public addLowPressStamp()I
    .locals 5

    .line 210
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "\u8bbe\u7f6e\u6700\u4f4e\u4f4e\u538b\u5ea6\u9600\u503cadd"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget v0, p0, Lcom/tpms/biz/Tpms3;->mLowPressStamp:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/tpms/biz/Tpms3;->mLowPressStamp:I

    .line 212
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms3;->getHiPress()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    .line 213
    .local v0, "curHi":I
    const/16 v1, 0x316

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 214
    .local v1, "low":I
    iget v2, p0, Lcom/tpms/biz/Tpms3;->mLowPressStamp:I

    if-le v2, v1, :cond_0

    .line 215
    iput v1, p0, Lcom/tpms/biz/Tpms3;->mLowPressStamp:I

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/tpms/biz/Tpms3;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget v3, p0, Lcom/tpms/biz/Tpms3;->mLowPressStamp:I

    const-string v4, "mLowPressStamp"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    iget v2, p0, Lcom/tpms/biz/Tpms3;->mLowPressStamp:I

    return v2
.end method

.method public decHiPressStamp()I
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "\u8bbe\u7f6e\u6700\u9ad8\u9ad8\u538b\u9600\u503cdec"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget v0, p0, Lcom/tpms/biz/Tpms3;->mHiPressStamp:I

    const/16 v1, 0xa

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tpms/biz/Tpms3;->mHiPressStamp:I

    .line 200
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms3;->getLowPress()I

    move-result v0

    add-int/2addr v0, v1

    .line 201
    .local v0, "curlow":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 202
    .local v1, "max":I
    iget v2, p0, Lcom/tpms/biz/Tpms3;->mHiPressStamp:I

    if-ge v2, v1, :cond_0

    .line 203
    iput v1, p0, Lcom/tpms/biz/Tpms3;->mHiPressStamp:I

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/tpms/biz/Tpms3;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget v3, p0, Lcom/tpms/biz/Tpms3;->mHiPressStamp:I

    const-string v4, "mHiPressStamp"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    iget v2, p0, Lcom/tpms/biz/Tpms3;->mHiPressStamp:I

    return v2
.end method

.method public decLowPressStamp()I
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "\u8bbe\u7f6e\u6700\u4f4e\u4f4e\u538b\u5ea6\u9600\u503cdec"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget v0, p0, Lcom/tpms/biz/Tpms3;->mLowPressStamp:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/tpms/biz/Tpms3;->mLowPressStamp:I

    .line 224
    iget v0, p0, Lcom/tpms/biz/Tpms3;->mLowPressStamp:I

    if-gez v0, :cond_0

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/tpms/biz/Tpms3;->mLowPressStamp:I

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/tpms/biz/Tpms3;->mLowPressStamp:I

    const-string v2, "mLowPressStamp"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    iget v0, p0, Lcom/tpms/biz/Tpms3;->mLowPressStamp:I

    return v0
.end method

.method public exchangeLeftBackRightBack()V
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->exchangeLeftBackRightBack()V

    .line 1019
    return-void
.end method

.method public exchangeLeftFrontLeftBack()V
    .locals 1

    .line 1002
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->exchangeLeftFrontLeftBack()V

    .line 1003
    return-void
.end method

.method public exchangeLeftFrontRightBack()V
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->exchangeLeftFrontRightBack()V

    .line 1007
    return-void
.end method

.method public exchangeLeftFrontRightFront()V
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->exchangeLeftFrontRightFront()V

    .line 999
    return-void
.end method

.method public exchangeRightFrontLeftBack()V
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->exchangeRightFrontLeftBack()V

    .line 1011
    return-void
.end method

.method public exchangeRightFrontRightBack()V
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->exchangeRightFrontRightBack()V

    .line 1015
    return-void
.end method

.method public exchange_sp_bl()V
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->exchange_sp_bl()V

    .line 1032
    return-void
.end method

.method public exchange_sp_br()V
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->exchange_sp_br()V

    .line 1036
    return-void
.end method

.method public exchange_sp_fl()V
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->exchange_sp_fl()V

    .line 1023
    return-void
.end method

.method public exchange_sp_fr()V
    .locals 1

    .line 1026
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->exchange_sp_fr()V

    .line 1028
    return-void
.end method

.method public getAlarmAgrs()Lcom/tpms/modle/AlarmAgrs;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mAlarmAgrs:Lcom/tpms/modle/AlarmAgrs;

    return-object v0
.end method

.method public initCodes()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "initCodes"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/tpms/decode/FrameDecode3;

    invoke-direct {v0}, Lcom/tpms/decode/FrameDecode3;-><init>()V

    iput-object v0, p0, Lcom/tpms/biz/Tpms3;->mdecode:Lcom/tpms/decode/FrameDecode;

    .line 102
    new-instance v0, Lcom/tpms/encode/FrameEncode3;

    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tpms/encode/FrameEncode3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    .line 103
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tpms/encode/FrameEncode;->init(Landroid/content/Context;)V

    .line 104
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mdecode:Lcom/tpms/decode/FrameDecode;

    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tpms/decode/FrameDecode;->init(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method public initMisc(Landroid/content/Context;)V
    .locals 4
    .param p1, "_app"    # Landroid/content/Context;

    .line 113
    iget-boolean v0, p0, Lcom/tpms/biz/Tpms3;->mIsInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/tpms/biz/Tpms3;->initfirst(Landroid/content/Context;)V

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tpms/biz/Tpms3;->mDataCheckHander:Landroid/os/Handler;

    .line 119
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mDataCheckTimer:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms3;->initShakeHand()V

    .line 122
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms3;->queryConfig()V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tpms/biz/Tpms3;->mIsInit:Z

    .line 125
    return-void
.end method

.method public initShakeHand()V
    .locals 4

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tpms/biz/Tpms3;->mIsSeedAckOk:Z

    .line 157
    iput v0, p0, Lcom/tpms/biz/Tpms3;->mErrorCount:I

    .line 158
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms3;->shakeHand()V

    .line 159
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mHeader:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tpms/biz/Tpms3;->mHeader:Landroid/os/Handler;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mHeader:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mHeartbeat:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mHeader:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mHeartbeat:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tpms/biz/Tpms3;->startDataTime:J

    .line 166
    return-void
.end method

.method public onEventMainThread(Lcom/tpms/modle/HeartbeatEvent;)V
    .locals 0
    .param p1, "hb"    # Lcom/tpms/modle/HeartbeatEvent;

    .line 961
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms3;->HeartbeatEventAck()V

    .line 962
    return-void
.end method

.method public onEventMainThread(Lcom/tpms/modle/TimeSeedEvent;)V
    .locals 4
    .param p1, "ack"    # Lcom/tpms/modle/TimeSeedEvent;

    .line 314
    iget-byte v0, p0, Lcom/tpms/biz/Tpms3;->time:B

    xor-int/lit8 v0, v0, 0x20

    xor-int/lit8 v0, v0, 0x17

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x7a

    xor-int/lit8 v0, v0, 0x64

    xor-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x7e

    xor-int/lit8 v0, v0, 0x76

    int-to-byte v0, v0

    .line 315
    .local v0, "ack0":B
    iget v2, p1, Lcom/tpms/modle/TimeSeedEvent;->mSeedAck:I

    if-ne v2, v0, :cond_0

    .line 316
    iget-object v2, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v3, "ack.mSeedAck==ack0"

    invoke-static {v2, v3}, Lcom/tpms/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iput-boolean v1, p0, Lcom/tpms/biz/Tpms3;->mIsSeedAckOk:Z

    .line 318
    const/4 v1, 0x0

    iput v1, p0, Lcom/tpms/biz/Tpms3;->mErrorCount:I

    .line 319
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mErrorDlg:Lcom/tpms/widget/CDialog2;

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mErrorDlg:Lcom/tpms/widget/CDialog2;

    invoke-virtual {v1}, Lcom/tpms/widget/CDialog2;->hideCustomToast()V

    .line 321
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tpms/biz/Tpms3;->mErrorDlg:Lcom/tpms/widget/CDialog2;

    goto :goto_0

    .line 325
    :cond_0
    iget-object v2, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v3, "ack.mSeedAck!=ack0"

    invoke-static {v2, v3}, Lcom/tpms/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget v2, p0, Lcom/tpms/biz/Tpms3;->mErrorCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/tpms/biz/Tpms3;->mErrorCount:I

    .line 327
    const/4 v1, 0x5

    if-le v2, v1, :cond_1

    .line 328
    invoke-direct {p0}, Lcom/tpms/biz/Tpms3;->showErrorDlg()V

    .line 330
    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/tpms/modle/TiresStateEvent;)V
    .locals 9
    .param p1, "alarm"    # Lcom/tpms/modle/TiresStateEvent;

    .line 336
    new-instance v0, Landroid/content/Intent;

    const-string v1, "TPMS_APP_STATE_SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-boolean v1, v1, Lcom/tpms/modle/TiresState;->LowPower:Z

    const-string v2, "lowpower"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    iget-object v1, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-boolean v1, v1, Lcom/tpms/modle/TiresState;->Leakage:Z

    const-string v2, "leakage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    iget-object v1, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-boolean v1, v1, Lcom/tpms/modle/TiresState;->NoSignal:Z

    const-string v2, "nosignal"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 340
    iget-object v1, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget v1, v1, Lcom/tpms/modle/TiresState;->AirPressure:I

    const-string v2, "airpressure"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    iget-object v1, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget v1, v1, Lcom/tpms/modle/TiresState;->Temperature:I

    const-string v2, "temperature"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    iget v1, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    const-string v2, "tires"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms3;->getYaliDanwei()Ljava/lang/String;

    move-result-object v1

    const-string v2, "presunit"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 347
    iget v1, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mFrontLeft:Lcom/tpms/modle/TiresState;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v6, p0, Lcom/tpms/biz/Tpms3;->mFrontLeft:Lcom/tpms/modle/TiresState;

    iget-object v6, v6, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    iput-object v6, v1, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    goto :goto_0

    .line 349
    :cond_0
    iget v1, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mFrontRight:Lcom/tpms/modle/TiresState;

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v6, p0, Lcom/tpms/biz/Tpms3;->mFrontRight:Lcom/tpms/modle/TiresState;

    iget-object v6, v6, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    iput-object v6, v1, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    goto :goto_0

    .line 351
    :cond_1
    iget v1, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mBackRight:Lcom/tpms/modle/TiresState;

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v6, p0, Lcom/tpms/biz/Tpms3;->mBackRight:Lcom/tpms/modle/TiresState;

    iget-object v6, v6, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    iput-object v6, v1, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    goto :goto_0

    .line 353
    :cond_2
    iget v1, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mBackLeft:Lcom/tpms/modle/TiresState;

    if-eqz v1, :cond_3

    .line 354
    iget-object v1, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v6, p0, Lcom/tpms/biz/Tpms3;->mBackLeft:Lcom/tpms/modle/TiresState;

    iget-object v6, v6, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    iput-object v6, v1, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    goto :goto_0

    .line 355
    :cond_3
    iget v1, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mSpareTire:Lcom/tpms/modle/TiresState;

    if-eqz v1, :cond_4

    .line 356
    iget-object v1, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v2, p0, Lcom/tpms/biz/Tpms3;->mSpareTire:Lcom/tpms/modle/TiresState;

    iget-object v2, v2, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    iput-object v2, v1, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    .line 358
    return-void

    .line 360
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v6, "onEventMainThread(TiresStateEvent alarm)"

    invoke-static {v1, v6}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms3;->sendTimeSeed()V

    .line 363
    invoke-direct {p0}, Lcom/tpms/biz/Tpms3;->hideConnectErrDlg()V

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/tpms/biz/Tpms3;->startDataTime:J

    .line 366
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mConnectErrorDlg:Lcom/tpms/widget/CDialog2;

    if-eqz v1, :cond_5

    .line 367
    invoke-virtual {v1}, Lcom/tpms/widget/CDialog2;->hideCustomToast()V

    .line 368
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tpms/biz/Tpms3;->mConnectErrorDlg:Lcom/tpms/widget/CDialog2;

    goto :goto_1

    .line 370
    :cond_5
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mDataCheckHander:Landroid/os/Handler;

    iget-object v6, p0, Lcom/tpms/biz/Tpms3;->CheckEncryptionTime:Ljava/lang/Runnable;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 371
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mDataCheckHander:Landroid/os/Handler;

    iget-object v6, p0, Lcom/tpms/biz/Tpms3;->CheckEncryptionTime:Ljava/lang/Runnable;

    const-wide/16 v7, 0x4e20

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    :goto_1
    const-string v1, ""

    .line 376
    .local v1, "title":Ljava/lang/String;
    const-string v6, ""

    .line 378
    .local v6, "tiresKey":Ljava/lang/String;
    iget v7, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-ne v7, v5, :cond_6

    .line 379
    iput-boolean v5, p0, Lcom/tpms/biz/Tpms3;->isHaveData:Z

    .line 380
    iget-object v2, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v3, p0, Lcom/tpms/biz/Tpms3;->mFrontLeft:Lcom/tpms/modle/TiresState;

    iget-object v3, v3, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    iput-object v3, v2, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    .line 381
    iget-object v2, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iput-object v2, p0, Lcom/tpms/biz/Tpms3;->mFrontLeft:Lcom/tpms/modle/TiresState;

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "leftfront"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 385
    :cond_6
    iget v5, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-ne v5, v4, :cond_7

    .line 386
    iget-object v2, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v3, p0, Lcom/tpms/biz/Tpms3;->mFrontRight:Lcom/tpms/modle/TiresState;

    iget-object v3, v3, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    iput-object v3, v2, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    .line 387
    iget-object v2, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iput-object v2, p0, Lcom/tpms/biz/Tpms3;->mFrontRight:Lcom/tpms/modle/TiresState;

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "rightfront"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 391
    :cond_7
    iget v4, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-ne v4, v3, :cond_a

    .line 392
    iget-object v2, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v3, p0, Lcom/tpms/biz/Tpms3;->mBackRight:Lcom/tpms/modle/TiresState;

    iget-object v3, v3, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    iput-object v3, v2, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    .line 393
    iget-object v2, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iput-object v2, p0, Lcom/tpms/biz/Tpms3;->mBackRight:Lcom/tpms/modle/TiresState;

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "rightback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 397
    invoke-direct {p0}, Lcom/tpms/biz/Tpms3;->isAllTiresOk()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 398
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms3;->isDevCheckOk()Z

    move-result v2

    if-nez v2, :cond_8

    .line 399
    iget-object v2, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v3, "showNormalNotifMsg but checkerror"

    invoke-static {v2, v3}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 401
    :cond_8
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms3;->showNormalNotifMsg()V

    goto/16 :goto_2

    .line 404
    :cond_9
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms3;->showErrorNotifMsg()V

    goto/16 :goto_2

    .line 407
    :cond_a
    iget v3, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-nez v3, :cond_b

    .line 408
    iget-object v2, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v3, p0, Lcom/tpms/biz/Tpms3;->mBackLeft:Lcom/tpms/modle/TiresState;

    iget-object v3, v3, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    iput-object v3, v2, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    .line 409
    iget-object v2, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iput-object v2, p0, Lcom/tpms/biz/Tpms3;->mBackLeft:Lcom/tpms/modle/TiresState;

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "leftback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 413
    :cond_b
    iget v3, p1, Lcom/tpms/modle/TiresStateEvent;->tires:I

    if-ne v3, v2, :cond_c

    .line 414
    iget-object v2, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v3, p0, Lcom/tpms/biz/Tpms3;->mSpareTire:Lcom/tpms/modle/TiresState;

    iget-object v3, v3, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    iput-object v3, v2, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    .line 415
    iget-object v2, p1, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iput-object v2, p0, Lcom/tpms/biz/Tpms3;->mSpareTire:Lcom/tpms/modle/TiresState;

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SpareTire"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 423
    :cond_c
    :goto_2
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms3;->getZhuDongBaojin()I

    move-result v2

    if-nez v2, :cond_d

    .line 424
    return-void

    .line 428
    :cond_d
    invoke-virtual {p0, v6, v1, p1}, Lcom/tpms/biz/Tpms3;->showAlarmDialog(Ljava/lang/String;Ljava/lang/String;Lcom/tpms/modle/TiresStateEvent;)V

    .line 432
    return-void
.end method

.method public paireBackLeft()V
    .locals 2

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tpms/biz/Tpms3;->mIsPairedId:Z

    .line 278
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "\u914d\u5bf9\u5de6\u540e\u8f6eID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->paireBackLeft()V

    .line 280
    return-void
.end method

.method public paireBackRight()V
    .locals 2

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tpms/biz/Tpms3;->mIsPairedId:Z

    .line 284
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "\u914d\u5bf9\u53f3\u540e\u8f6eID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->paireBackRight()V

    .line 286
    return-void
.end method

.method public paireFrontLeft()V
    .locals 2

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tpms/biz/Tpms3;->mIsPairedId:Z

    .line 290
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "\u914d\u5bf9\u524d\u5de6\u8f6eID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->paireFrontLeft()V

    .line 292
    return-void
.end method

.method public paireFrontRight()V
    .locals 2

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tpms/biz/Tpms3;->mIsPairedId:Z

    .line 296
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "\u914d\u5bf9\u524d\u53f3ID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->paireFrontRight()V

    .line 298
    return-void
.end method

.method public paireSpTired()V
    .locals 2

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tpms/biz/Tpms3;->mIsPairedId:Z

    .line 303
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "\u914d\u5bf9\u524d\u53f3ID"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->paireSpTired()V

    .line 305
    return-void
.end method

.method public queryBackLeft()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "\u67e5\u5de6\u540e\u8f6eID \u6ca1\u6709\u534f\u8bae"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public queryBackRight()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "\u67e5\u53f3\u540e\u8f6eID  \u6ca1\u6709\u534f\u8bae"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public queryConfig()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "queryConfig \u6c14\u538b\u4e0a\u4e0b\u9650\uff0c\u6e29\u5ea6\u4e0a\u9650,\u6ca1\u6709\u534f\u8bae\uff0capk\u5b9e\u73b0"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public queryFrontLeft()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "\u67e5\u524d\u5de6\u8f6eID  \u6ca1\u6709\u534f\u8bae"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public queryFrontRight()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "\u67e5\u524d\u53f3ID  \u6ca1\u6709\u534f\u8bae"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public querySensorID()V
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->querySensorID()V

    .line 977
    return-void
.end method

.method public queryVersion()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "\u67e5\u534f\u8bae\u7248\u672c\u53f7,\u6ca1\u6709\u534f\u8bae"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public sendTimeSeed()V
    .locals 4

    .line 1075
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTimeSeed mIsSeedAckOk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tpms/biz/Tpms3;->mIsSeedAckOk:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-boolean v0, p0, Lcom/tpms/biz/Tpms3;->mIsSeedAckOk:Z

    if-nez v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    iget-byte v1, p0, Lcom/tpms/biz/Tpms3;->time:B

    invoke-virtual {v0, v1}, Lcom/tpms/encode/FrameEncode;->SendEncryption(B)V

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mTimerCheckSeed:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 1082
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tpms/biz/Tpms3;->mTimerCheckSeed:Landroid/os/Handler;

    .line 1083
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->CheckEncryptionTime:Ljava/lang/Runnable;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1085
    :cond_1
    return-void
.end method

.method public setDiya(I)I
    .locals 2
    .param p1, "yali"    # I

    .line 244
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "\u8bbe\u7f6e\u6700\u9ad8\u538b\u529b\u9600\u503c\uff0c\u6ca1\u6709\u534f\u8bae"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    mul-int/lit8 v0, p1, 0xa

    return v0
.end method

.method public setGaoya(I)I
    .locals 2
    .param p1, "yali"    # I

    .line 234
    div-int/lit8 p1, p1, 0xa

    .line 235
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "\u8bbe\u7f6e\u6700\u9ad8\u538b\u529b\u9600\u503c,\u6ca1\u6709\u534f\u8bae"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    mul-int/lit8 v0, p1, 0xa

    return v0
.end method

.method public setHiPressDef()I
    .locals 3

    .line 986
    const/16 v0, 0x136

    iput v0, p0, Lcom/tpms/biz/Tpms3;->mHiPressStamp:I

    .line 987
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mHiPressStamp"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 988
    iget v0, p0, Lcom/tpms/biz/Tpms3;->mHiPressStamp:I

    return v0
.end method

.method public setHiTempDef()I
    .locals 3

    .line 980
    const/16 v0, 0x4b

    iput v0, p0, Lcom/tpms/biz/Tpms3;->mHiTempStamp:I

    .line 981
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mHiTempStamp"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 982
    iget v0, p0, Lcom/tpms/biz/Tpms3;->mHiTempStamp:I

    return v0
.end method

.method public setLowPressDef()I
    .locals 3

    .line 992
    const/16 v0, 0xb4

    iput v0, p0, Lcom/tpms/biz/Tpms3;->mLowPressStamp:I

    .line 993
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mLowPressStamp"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 994
    iget v0, p0, Lcom/tpms/biz/Tpms3;->mLowPressStamp:I

    return v0
.end method

.method public shakeHand()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "shakeHand \u63e1\u624b,\u6ca1\u6709\u534f\u8bae"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method protected showAlarmDialog(Ljava/lang/String;Ljava/lang/String;Lcom/tpms/modle/TiresStateEvent;)V
    .locals 23
    .param p1, "tiresKey"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "tevent"    # Lcom/tpms/modle/TiresStateEvent;

    .line 503
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    iget-object v0, v6, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "showAlarmDialog"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v8, v7, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    .line 505
    .local v8, "state":Lcom/tpms/modle/TiresState;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v9, v0, v2

    .line 506
    .local v9, "time":J
    const-string v0, ""

    .line 507
    .local v0, "errorKey":Ljava/lang/String;
    const/4 v1, 0x1

    .line 508
    .local v1, "HiPressStampValid":Z
    const/4 v2, 0x1

    .line 509
    .local v2, "LowPressStampValid":Z
    const/4 v3, 0x1

    .line 510
    .local v3, "HiTempStampValid":Z
    const/4 v4, 0x1

    .line 511
    .local v4, "LowPowerValid":Z
    const/4 v5, 0x1

    .line 512
    .local v5, "NoSignalValid":Z
    const/4 v11, 0x1

    .line 513
    .local v11, "LeakageValid":Z
    const-string v12, ""

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v11

    move v11, v1

    .line 515
    .end local v1    # "HiPressStampValid":Z
    .end local v2    # "LowPressStampValid":Z
    .end local v3    # "HiTempStampValid":Z
    .end local v4    # "LowPowerValid":Z
    .end local v5    # "NoSignalValid":Z
    .local v11, "HiPressStampValid":Z
    .local v12, "title2":Ljava/lang/String;
    .local v13, "LowPressStampValid":Z
    .local v14, "HiTempStampValid":Z
    .local v15, "LowPowerValid":Z
    .local v16, "NoSignalValid":Z
    .local v17, "LeakageValid":Z
    :goto_0
    const-string v18, ""

    .line 517
    .end local v0    # "errorKey":Ljava/lang/String;
    .local v18, "errorKey":Ljava/lang/String;
    const v5, 0x7f0b000f

    if-eqz v16, :cond_1

    iget-boolean v0, v8, Lcom/tpms/modle/TiresState;->NoSignal:Z

    if-eqz v0, :cond_1

    .line 519
    const-string v4, "NoSignal"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v2, v9

    move-object/from16 v19, v12

    const v12, 0x7f0b000f

    .end local v12    # "title2":Ljava/lang/String;
    .local v19, "title2":Ljava/lang/String;
    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tpms/biz/Tpms3;->isTimeOut(Ljava/lang/String;JLjava/lang/String;Lcom/tpms/modle/TiresStateEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    const/16 v16, 0x0

    .line 521
    move-object/from16 v0, v18

    move-object/from16 v12, v19

    goto :goto_0

    .line 523
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/tpms/biz/Tpms3;->getConnectWarringEnable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 524
    iget-object v0, v6, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 525
    .end local v19    # "title2":Ljava/lang/String;
    .local v0, "title2":Ljava/lang/String;
    const-string v18, "NoSignal"

    move-object/from16 v1, v18

    goto/16 :goto_1

    .line 517
    .end local v0    # "title2":Ljava/lang/String;
    .restart local v12    # "title2":Ljava/lang/String;
    :cond_1
    move-object/from16 v19, v12

    const v12, 0x7f0b000f

    .line 530
    .end local v12    # "title2":Ljava/lang/String;
    .restart local v19    # "title2":Ljava/lang/String;
    if-eqz v17, :cond_3

    iget-boolean v0, v8, Lcom/tpms/modle/TiresState;->Leakage:Z

    if-eqz v0, :cond_3

    .line 532
    const-string v18, "Leakage"

    .line 534
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v2, v9

    move-object/from16 v4, v18

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tpms/biz/Tpms3;->isTimeOut(Ljava/lang/String;JLjava/lang/String;Lcom/tpms/modle/TiresStateEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 535
    const/16 v17, 0x0

    .line 536
    move-object/from16 v0, v18

    move-object/from16 v12, v19

    goto :goto_0

    .line 538
    :cond_2
    iget-object v0, v6, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 539
    .end local v19    # "title2":Ljava/lang/String;
    .restart local v0    # "title2":Ljava/lang/String;
    move-object/from16 v1, v18

    goto/16 :goto_1

    .line 542
    .end local v0    # "title2":Ljava/lang/String;
    .restart local v19    # "title2":Ljava/lang/String;
    :cond_3
    if-eqz v11, :cond_5

    iget v0, v8, Lcom/tpms/modle/TiresState;->AirPressure:I

    iget v1, v6, Lcom/tpms/biz/Tpms3;->mHiPressStamp:I

    if-lt v0, v1, :cond_5

    .line 544
    const-string v18, "mHiPressStamp"

    .line 546
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v2, v9

    move-object/from16 v4, v18

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tpms/biz/Tpms3;->isTimeOut(Ljava/lang/String;JLjava/lang/String;Lcom/tpms/modle/TiresStateEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 547
    const/4 v11, 0x0

    .line 548
    move-object/from16 v0, v18

    move-object/from16 v12, v19

    goto/16 :goto_0

    .line 550
    :cond_4
    iget-object v0, v6, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 551
    .end local v19    # "title2":Ljava/lang/String;
    .restart local v0    # "title2":Ljava/lang/String;
    move-object/from16 v1, v18

    goto/16 :goto_1

    .line 553
    .end local v0    # "title2":Ljava/lang/String;
    .restart local v19    # "title2":Ljava/lang/String;
    :cond_5
    if-eqz v13, :cond_7

    iget v0, v8, Lcom/tpms/modle/TiresState;->AirPressure:I

    iget v1, v6, Lcom/tpms/biz/Tpms3;->mLowPressStamp:I

    if-gt v0, v1, :cond_7

    .line 555
    const-string v18, "mLowPressStamp"

    .line 557
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v2, v9

    move-object/from16 v4, v18

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tpms/biz/Tpms3;->isTimeOut(Ljava/lang/String;JLjava/lang/String;Lcom/tpms/modle/TiresStateEvent;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 558
    const/4 v13, 0x0

    .line 559
    move-object/from16 v0, v18

    move-object/from16 v12, v19

    goto/16 :goto_0

    .line 561
    :cond_6
    iget-object v0, v6, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 562
    .end local v19    # "title2":Ljava/lang/String;
    .restart local v0    # "title2":Ljava/lang/String;
    move-object/from16 v1, v18

    goto/16 :goto_1

    .line 564
    .end local v0    # "title2":Ljava/lang/String;
    .restart local v19    # "title2":Ljava/lang/String;
    :cond_7
    if-eqz v14, :cond_9

    iget v0, v8, Lcom/tpms/modle/TiresState;->Temperature:I

    iget v1, v6, Lcom/tpms/biz/Tpms3;->mHiTempStamp:I

    if-lt v0, v1, :cond_9

    .line 566
    const-string v18, "mHiTempStamp"

    .line 568
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v2, v9

    move-object/from16 v4, v18

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tpms/biz/Tpms3;->isTimeOut(Ljava/lang/String;JLjava/lang/String;Lcom/tpms/modle/TiresStateEvent;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 569
    const/4 v14, 0x0

    .line 570
    move-object/from16 v0, v18

    move-object/from16 v12, v19

    goto/16 :goto_0

    .line 572
    :cond_8
    iget-object v0, v6, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 573
    .end local v19    # "title2":Ljava/lang/String;
    .restart local v0    # "title2":Ljava/lang/String;
    move-object/from16 v1, v18

    goto :goto_1

    .line 576
    .end local v0    # "title2":Ljava/lang/String;
    .restart local v19    # "title2":Ljava/lang/String;
    :cond_9
    if-eqz v15, :cond_b

    iget-boolean v0, v8, Lcom/tpms/modle/TiresState;->LowPower:Z

    if-eqz v0, :cond_b

    .line 579
    const-string v4, "LowPower"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v2, v9

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tpms/biz/Tpms3;->isTimeOut(Ljava/lang/String;JLjava/lang/String;Lcom/tpms/modle/TiresStateEvent;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 580
    const/4 v15, 0x0

    .line 581
    move-object/from16 v0, v18

    move-object/from16 v12, v19

    goto/16 :goto_0

    .line 583
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/tpms/biz/Tpms3;->getBettaWarringEnable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 584
    iget-object v0, v6, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 585
    .end local v19    # "title2":Ljava/lang/String;
    .restart local v0    # "title2":Ljava/lang/String;
    const-string v18, "LowPower"

    move-object/from16 v1, v18

    goto :goto_1

    .line 594
    .end local v0    # "title2":Ljava/lang/String;
    .restart local v19    # "title2":Ljava/lang/String;
    :cond_b
    move-object/from16 v1, v18

    move-object/from16 v0, v19

    .end local v18    # "errorKey":Ljava/lang/String;
    .end local v19    # "title2":Ljava/lang/String;
    .restart local v0    # "title2":Ljava/lang/String;
    .local v1, "errorKey":Ljava/lang/String;
    :goto_1
    iget-boolean v2, v8, Lcom/tpms/modle/TiresState;->NoSignal:Z

    if-eqz v2, :cond_c

    .line 595
    iget-object v2, v6, Lcom/tpms/biz/Tpms3;->app:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 598
    :cond_c
    move-object/from16 v2, p1

    .line 599
    .local v2, "tires_key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 600
    .local v3, "titleKey":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, p2

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 602
    .end local p2    # "title":Ljava/lang/String;
    .local v5, "title":Ljava/lang/String;
    invoke-direct {v6, v8, v2}, Lcom/tpms/biz/Tpms3;->IsOkClearInTimeAndCUI(Lcom/tpms/modle/TiresState;Ljava/lang/String;)V

    .line 604
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 605
    iget-object v12, v6, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v0    # "title2":Ljava/lang/String;
    .local v18, "title2":Ljava/lang/String;
    const-string v0, "\u67d0\u4e00\u4e2a\u8f6e\u80ce\u65e0\u544a\u8b66,\u5305\u62ec\u6ca1\u6709\u8d85\u65f6"

    invoke-static {v12, v0}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/tpms/biz/Tpms3;->isAllOk()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 609
    iget-object v0, v6, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v12, "isAllOk"

    invoke-static {v0, v12}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_d
    return-void

    .line 619
    .end local v18    # "title2":Ljava/lang/String;
    .restart local v0    # "title2":Ljava/lang/String;
    :cond_e
    move-object/from16 v18, v0

    .end local v0    # "title2":Ljava/lang/String;
    .restart local v18    # "title2":Ljava/lang/String;
    iget-object v0, v6, Lcom/tpms/biz/Tpms3;->mErrorToast:Lcom/tpms/widget/ClickToast;

    if-eqz v0, :cond_f

    .line 620
    iget-object v0, v6, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v12, "\u5df2\u7ecf\u663e\u793a\u4e86UI"

    invoke-static {v0, v12}, Lcom/tpms/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return-void

    .line 624
    :cond_f
    iget-object v0, v7, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v0, v0, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tpms/modle/AlarmCntrol;

    iput-object v0, v6, Lcom/tpms/biz/Tpms3;->mCurrentErrCtrl:Lcom/tpms/modle/AlarmCntrol;

    .line 625
    if-nez v0, :cond_10

    .line 627
    new-instance v0, Lcom/tpms/modle/AlarmCntrol;

    invoke-direct {v0}, Lcom/tpms/modle/AlarmCntrol;-><init>()V

    iput-object v0, v6, Lcom/tpms/biz/Tpms3;->mCurrentErrCtrl:Lcom/tpms/modle/AlarmCntrol;

    .line 628
    iget-object v0, v7, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    iget-object v0, v0, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    iget-object v12, v6, Lcom/tpms/biz/Tpms3;->mCurrentErrCtrl:Lcom/tpms/modle/AlarmCntrol;

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    :cond_10
    iget-object v0, v6, Lcom/tpms/biz/Tpms3;->mCurrentErrCtrl:Lcom/tpms/modle/AlarmCntrol;

    move-object v12, v1

    .end local v1    # "errorKey":Ljava/lang/String;
    .local v12, "errorKey":Ljava/lang/String;
    iget-wide v0, v0, Lcom/tpms/modle/AlarmCntrol;->mTimeInterval:J

    const-wide v19, 0x7fffffffffffffffL

    cmp-long v21, v0, v19

    if-nez v21, :cond_11

    .line 632
    iget-object v0, v6, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "\u7184\u706b\u524d\u90fd\u4e0d\u62a5\u8b66"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    return-void

    .line 637
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/tpms/biz/Tpms3;->getSoundWarringEnable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 638
    invoke-virtual {v6, v3}, Lcom/tpms/biz/Tpms3;->playerSound(Ljava/lang/String;)V

    .line 641
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/tpms/biz/Tpms3;->getShowUiEnable()Z

    move-result v0

    if-nez v0, :cond_13

    .line 642
    iget-object v0, v6, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "\u4e0d\u5141\u8bb8\u663e\u793aUI"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    return-void

    .line 646
    :cond_13
    iget-object v0, v6, Lcom/tpms/biz/Tpms3;->mCurrentErrCtrl:Lcom/tpms/modle/AlarmCntrol;

    iget-wide v0, v0, Lcom/tpms/modle/AlarmCntrol;->mTimeStamp:J

    const-wide/16 v19, 0x0

    cmp-long v21, v0, v19

    if-eqz v21, :cond_14

    iget-object v0, v6, Lcom/tpms/biz/Tpms3;->mCurrentErrCtrl:Lcom/tpms/modle/AlarmCntrol;

    iget-wide v0, v0, Lcom/tpms/modle/AlarmCntrol;->mTimeStamp:J

    sub-long v0, v9, v0

    move-object/from16 v19, v2

    .end local v2    # "tires_key":Ljava/lang/String;
    .local v19, "tires_key":Ljava/lang/String;
    iget-object v2, v6, Lcom/tpms/biz/Tpms3;->mCurrentErrCtrl:Lcom/tpms/modle/AlarmCntrol;

    move-object/from16 v20, v8

    move-wide/from16 v21, v9

    .end local v8    # "state":Lcom/tpms/modle/TiresState;
    .end local v9    # "time":J
    .local v20, "state":Lcom/tpms/modle/TiresState;
    .local v21, "time":J
    iget-wide v8, v2, Lcom/tpms/modle/AlarmCntrol;->mTimeInterval:J

    cmp-long v2, v0, v8

    if-lez v2, :cond_16

    goto :goto_2

    .end local v19    # "tires_key":Ljava/lang/String;
    .end local v20    # "state":Lcom/tpms/modle/TiresState;
    .end local v21    # "time":J
    .restart local v2    # "tires_key":Ljava/lang/String;
    .restart local v8    # "state":Lcom/tpms/modle/TiresState;
    .restart local v9    # "time":J
    :cond_14
    move-object/from16 v19, v2

    move-object/from16 v20, v8

    move-wide/from16 v21, v9

    .line 647
    .end local v2    # "tires_key":Ljava/lang/String;
    .end local v8    # "state":Lcom/tpms/modle/TiresState;
    .end local v9    # "time":J
    .restart local v19    # "tires_key":Ljava/lang/String;
    .restart local v20    # "state":Lcom/tpms/modle/TiresState;
    .restart local v21    # "time":J
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tevent id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/tpms/modle/TiresStateEvent;->tires:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/tpms/biz/Tpms3;->mCurrentErrCtrl:Lcom/tpms/modle/AlarmCntrol;

    iget-wide v1, v1, Lcom/tpms/modle/AlarmCntrol;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ";mTimeInterval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/tpms/biz/Tpms3;->mCurrentErrCtrl:Lcom/tpms/modle/AlarmCntrol;

    iget-wide v1, v1, Lcom/tpms/modle/AlarmCntrol;->mTimeInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-static {v1, v0}, Lcom/tpms/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v0, v6, Lcom/tpms/biz/Tpms3;->mCurrentErrCtrl:Lcom/tpms/modle/AlarmCntrol;

    iput-object v5, v0, Lcom/tpms/modle/AlarmCntrol;->mError:Ljava/lang/String;

    .line 649
    iget-object v0, v6, Lcom/tpms/biz/Tpms3;->mCurrentErrCtrl:Lcom/tpms/modle/AlarmCntrol;

    iput-object v3, v0, Lcom/tpms/modle/AlarmCntrol;->mErrorKey:Ljava/lang/String;

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/tpms/biz/Tpms3;->isRunningForeground()Z

    move-result v0

    if-nez v0, :cond_15

    .line 652
    invoke-direct/range {p0 .. p0}, Lcom/tpms/biz/Tpms3;->showErrorToast()V

    .line 653
    iget-object v0, v6, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "in backround \u5728\u540e\u53f0"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 655
    :cond_15
    iget-object v0, v6, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "in Foreground \u5728\u524d\u53f0"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :cond_16
    :goto_3
    return-void
.end method

.method public stopPaire()V
    .locals 2

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tpms/biz/Tpms3;->mIsPairedId:Z

    .line 309
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "stopPaire"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mencode:Lcom/tpms/encode/FrameEncode;

    invoke-virtual {v0}, Lcom/tpms/encode/FrameEncode;->stopPaire()V

    .line 311
    return-void
.end method

.method public unInitMisc()V
    .locals 2

    .line 1039
    iget-boolean v0, p0, Lcom/tpms/biz/Tpms3;->mIsInit:Z

    if-nez v0, :cond_0

    return-void

    .line 1041
    :cond_0
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms3;->unintShakeHand()V

    .line 1043
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mDataCheckHander:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mDataCheckTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1044
    invoke-super {p0}, Lcom/tpms/biz/Tpms;->unInitMisc()V

    .line 1045
    return-void
.end method

.method public unintShakeHand()V
    .locals 3

    .line 1048
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->TAG:Ljava/lang/String;

    const-string v1, "unintShakeHand"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tpms/biz/Tpms3;->mIsSeedAckOk:Z

    .line 1050
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->mHeader:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tpms/biz/Tpms3;->mHeartbeat:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1051
    iput v0, p0, Lcom/tpms/biz/Tpms3;->mErrorCount:I

    .line 1052
    iget-object v0, p0, Lcom/tpms/biz/Tpms3;->mTimerCheckSeed:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v1, p0, Lcom/tpms/biz/Tpms3;->CheckEncryptionTime:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1054
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/biz/Tpms3;->mTimerCheckSeed:Landroid/os/Handler;

    .line 1057
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tpms/biz/Tpms3;->startDataTime:J

    .line 1058
    invoke-virtual {p0}, Lcom/tpms/biz/Tpms3;->showErrorNotifMsg()V

    .line 1059
    return-void
.end method
