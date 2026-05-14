.class public Lcom/tpms/utils/SoundPoolCtrl2;
.super Lcom/tpms/utils/SoundPoolCtrl;
.source "SoundPoolCtrl2.java"


# instance fields
.field TAG:Ljava/lang/String;

.field mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "cont"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0, p1}, Lcom/tpms/utils/SoundPoolCtrl;-><init>(Landroid/content/Context;)V

    .line 19
    const-string v0, "difengze.com-SoundPoolCtrl2"

    iput-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl2;->TAG:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl2;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 25
    const/high16 v0, 0x7f0a0000

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl2;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 27
    :cond_0
    return-void
.end method

.method private startPlayer()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl2;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 58
    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl2;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/tpms/utils/SoundPoolCtrl2$1;

    invoke-direct {v1, p0}, Lcom/tpms/utils/SoundPoolCtrl2$1;-><init>(Lcom/tpms/utils/SoundPoolCtrl2;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 86
    nop

    .line 87
    return-void
.end method

.method private stopPlayer()V
    .locals 1

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tpms/utils/SoundPoolCtrl2;->isPlayer:Z

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl2;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public player(Ljava/lang/String;)V
    .locals 3
    .param p1, "guid"    # Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "player isPlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tpms/utils/SoundPoolCtrl2;->isPlayer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";guid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-boolean v0, p0, Lcom/tpms/utils/SoundPoolCtrl2;->isPlayer:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 33
    sget v0, Lcom/tpms/utils/SoundPoolCtrl2;->playerCount:I

    add-int/2addr v0, v1

    sput v0, Lcom/tpms/utils/SoundPoolCtrl2;->playerCount:I

    .line 34
    sget v0, Lcom/tpms/utils/SoundPoolCtrl2;->playerCount:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/tpms/utils/SoundPoolCtrl2;->stopPlayer()V

    .line 37
    invoke-direct {p0}, Lcom/tpms/utils/SoundPoolCtrl2;->startPlayer()V

    .line 39
    :cond_0
    return-void

    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/tpms/utils/SoundPoolCtrl2;->startPlayer()V

    .line 49
    iput-object p1, p0, Lcom/tpms/utils/SoundPoolCtrl2;->mGuid:Ljava/lang/String;

    .line 50
    iput-boolean v1, p0, Lcom/tpms/utils/SoundPoolCtrl2;->isPlayer:Z

    .line 52
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 3
    .param p1, "guid"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop isPlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tpms/utils/SoundPoolCtrl2;->isPlayer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";guid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-boolean v0, p0, Lcom/tpms/utils/SoundPoolCtrl2;->isPlayer:Z

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl2;->mGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/tpms/utils/SoundPoolCtrl2;->stopPlayer()V

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl2;->mGuid:Ljava/lang/String;

    .line 103
    :cond_2
    return-void
.end method
