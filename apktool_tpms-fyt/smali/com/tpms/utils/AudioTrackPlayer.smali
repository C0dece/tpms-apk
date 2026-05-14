.class public Lcom/tpms/utils/AudioTrackPlayer;
.super Ljava/lang/Object;
.source "AudioTrackPlayer.java"


# instance fields
.field private audioData:[B

.field private audioTrack:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0}, Lcom/tpms/utils/AudioTrackPlayer;->releaseAudioTrack()V

    .line 30
    const v0, 0xac44

    const/16 v1, 0xc

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 31
    .local v0, "min":I
    new-instance v1, Landroid/media/AudioTrack;

    const/4 v4, 0x3

    const v5, 0xac44

    const/16 v6, 0xc

    const/4 v7, 0x2

    const/4 v9, 0x0

    move-object v3, v1

    move v8, v0

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v1, p0, Lcom/tpms/utils/AudioTrackPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 35
    return-void
.end method

.method private releaseAudioTrack()V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tpms/utils/AudioTrackPlayer;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 21
    iget-object v0, p0, Lcom/tpms/utils/AudioTrackPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tpms/utils/AudioTrackPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/tpms/utils/AudioTrackPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;

    .line 46
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const v1, 0x40a90

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 48
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "b":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 49
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 52
    .end local v2    # "b":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/tpms/utils/AudioTrackPlayer;->audioData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local v0    # "out":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 56
    nop

    .line 59
    goto :goto_1

    .line 55
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 56
    nop

    .end local p1    # "in":Ljava/io/InputStream;
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    .restart local p1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 61
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    iget-object v0, p0, Lcom/tpms/utils/AudioTrackPlayer;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/tpms/utils/AudioTrackPlayer;->audioData:[B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioTrack;->write([BII)I

    .line 62
    return-void
.end method

.method public pause()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/tpms/utils/AudioTrackPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 71
    return-void
.end method

.method public start()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/tpms/utils/AudioTrackPlayer;->audioTrack:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/tpms/utils/AudioTrackPlayer;->audioData:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioTrack;->write([BII)I

    .line 66
    iget-object v0, p0, Lcom/tpms/utils/AudioTrackPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 67
    return-void
.end method
