.class public Lcom/tpms/utils/SoundPoolCtrl;
.super Ljava/lang/Object;
.source "SoundPoolCtrl.java"


# static fields
.field protected static playerCount:I


# instance fields
.field TAG:Ljava/lang/String;

.field afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field isPlayer:Z

.field mAudioM:Landroid/media/AudioManager;

.field mGuid:Ljava/lang/String;

.field protected mcont:Landroid/content/Context;

.field private playerId:I

.field private soundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/tpms/utils/SoundPoolCtrl;->playerCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "cont"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/tpms/utils/SoundPoolCtrl;->playerId:I

    .line 21
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tpms/utils/SoundPoolCtrl;->mAudioM:Landroid/media/AudioManager;

    .line 22
    const-string v1, "SoundPoolCtrl"

    iput-object v1, p0, Lcom/tpms/utils/SoundPoolCtrl;->TAG:Ljava/lang/String;

    .line 23
    iput-boolean v0, p0, Lcom/tpms/utils/SoundPoolCtrl;->isPlayer:Z

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl;->mGuid:Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/tpms/utils/SoundPoolCtrl$1;

    invoke-direct {v0, p0}, Lcom/tpms/utils/SoundPoolCtrl$1;-><init>(Lcom/tpms/utils/SoundPoolCtrl;)V

    iput-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 32
    iput-object p1, p0, Lcom/tpms/utils/SoundPoolCtrl;->mcont:Landroid/content/Context;

    .line 33
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl;->soundPool:Landroid/media/SoundPool;

    .line 34
    const/high16 v1, 0x7f0a0000

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 35
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl;->mAudioM:Landroid/media/AudioManager;

    .line 36
    return-void
.end method


# virtual methods
.method public getSoundGuid()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl;->mGuid:Ljava/lang/String;

    return-object v0
.end method

.method public player(Ljava/lang/String;)V
    .locals 8
    .param p1, "guid"    # Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "player isPlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tpms/utils/SoundPoolCtrl;->isPlayer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";guid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-boolean v0, p0, Lcom/tpms/utils/SoundPoolCtrl;->isPlayer:Z

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/tpms/utils/SoundPoolCtrl;->soundPool:Landroid/media/SoundPool;

    const/4 v2, 0x1

    const/high16 v3, 0x41700000    # 15.0f

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/tpms/utils/SoundPoolCtrl;->playerId:I

    .line 52
    iput-object p1, p0, Lcom/tpms/utils/SoundPoolCtrl;->mGuid:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tpms/utils/SoundPoolCtrl;->isPlayer:Z

    .line 55
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 3
    .param p1, "guid"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop isPlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tpms/utils/SoundPoolCtrl;->isPlayer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";guid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-boolean v0, p0, Lcom/tpms/utils/SoundPoolCtrl;->isPlayer:Z

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl;->mGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tpms/utils/SoundPoolCtrl;->soundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/tpms/utils/SoundPoolCtrl;->playerId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 74
    iput v0, p0, Lcom/tpms/utils/SoundPoolCtrl;->playerId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iput-boolean v0, p0, Lcom/tpms/utils/SoundPoolCtrl;->isPlayer:Z

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl;->mGuid:Ljava/lang/String;

    .line 92
    :cond_2
    return-void
.end method
