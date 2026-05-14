.class Lcom/tpms/utils/SoundPoolCtrl$1;
.super Ljava/lang/Object;
.source "SoundPoolCtrl.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tpms/utils/SoundPoolCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/utils/SoundPoolCtrl;


# direct methods
.method constructor <init>(Lcom/tpms/utils/SoundPoolCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/utils/SoundPoolCtrl;

    .line 94
    iput-object p1, p0, Lcom/tpms/utils/SoundPoolCtrl$1;->this$0:Lcom/tpms/utils/SoundPoolCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .line 107
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl$1;->this$0:Lcom/tpms/utils/SoundPoolCtrl;

    iget-object v0, v0, Lcom/tpms/utils/SoundPoolCtrl;->TAG:Ljava/lang/String;

    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_0
    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl$1;->this$0:Lcom/tpms/utils/SoundPoolCtrl;

    iget-object v0, v0, Lcom/tpms/utils/SoundPoolCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6709\u5e94\u7528\u7533\u8bf7\u4e86\u77ed\u7126\u70b9 \u6211\u538b\u4f4e\u58f0\u97f3  AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl$1;->this$0:Lcom/tpms/utils/SoundPoolCtrl;

    iget-object v0, v0, Lcom/tpms/utils/SoundPoolCtrl;->TAG:Ljava/lang/String;

    const-string v1, "AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_2
    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    .line 126
    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl$1;->this$0:Lcom/tpms/utils/SoundPoolCtrl;

    iget-object v0, v0, Lcom/tpms/utils/SoundPoolCtrl;->TAG:Ljava/lang/String;

    const-string v1, "AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_3
    if-ne p1, v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl$1;->this$0:Lcom/tpms/utils/SoundPoolCtrl;

    iget-object v0, v0, Lcom/tpms/utils/SoundPoolCtrl;->TAG:Ljava/lang/String;

    const-string v1, "\u6c38\u4e45\u83b7\u53d6\u5a92\u4f53\u7126\u70b9\uff08\u64ad\u653e\u97f3\u4e50\uff09\u73b0\u5728\u6ca1\u6709\u64ad\u653e AUDIOFOCUS_REQUEST_GRANTED"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl$1;->this$0:Lcom/tpms/utils/SoundPoolCtrl;

    iget-object v0, v0, Lcom/tpms/utils/SoundPoolCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focusChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void
.end method
