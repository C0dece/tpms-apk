.class Lcom/tpms/utils/SoundPoolCtrl2$1;
.super Ljava/lang/Object;
.source "SoundPoolCtrl2.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tpms/utils/SoundPoolCtrl2;->startPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tpms/utils/SoundPoolCtrl2;


# direct methods
.method constructor <init>(Lcom/tpms/utils/SoundPoolCtrl2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tpms/utils/SoundPoolCtrl2;

    .line 58
    iput-object p1, p0, Lcom/tpms/utils/SoundPoolCtrl2$1;->this$0:Lcom/tpms/utils/SoundPoolCtrl2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .line 65
    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl2$1;->this$0:Lcom/tpms/utils/SoundPoolCtrl2;

    iget-boolean v0, v0, Lcom/tpms/utils/SoundPoolCtrl2;->isPlayer:Z

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl2$1;->this$0:Lcom/tpms/utils/SoundPoolCtrl2;

    iget-object v0, v0, Lcom/tpms/utils/SoundPoolCtrl2;->TAG:Ljava/lang/String;

    const-string v1, "is over"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl2$1;->this$0:Lcom/tpms/utils/SoundPoolCtrl2;

    iget-object v0, v0, Lcom/tpms/utils/SoundPoolCtrl2;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 70
    iget-object v0, p0, Lcom/tpms/utils/SoundPoolCtrl2$1;->this$0:Lcom/tpms/utils/SoundPoolCtrl2;

    iget-object v0, v0, Lcom/tpms/utils/SoundPoolCtrl2;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 71
    return-void
.end method
