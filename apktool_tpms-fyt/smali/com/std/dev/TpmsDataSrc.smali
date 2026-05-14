.class public Lcom/std/dev/TpmsDataSrc;
.super Ljava/lang/Object;
.source "TpmsDataSrc.java"


# static fields
.field public static final MESSAGE_DATA_PROC:I = 0x1


# instance fields
.field protected BufferFrame:Lcom/tpms/decode/PackBufferFrame;

.field DEBUG:Z

.field private TAG:Ljava/lang/String;

.field protected theapp:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "app"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "TpmsDataSrc"

    iput-object v0, p0, Lcom/std/dev/TpmsDataSrc;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/std/dev/TpmsDataSrc;->BufferFrame:Lcom/tpms/decode/PackBufferFrame;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/std/dev/TpmsDataSrc;->DEBUG:Z

    .line 30
    iput-object p1, p0, Lcom/std/dev/TpmsDataSrc;->theapp:Landroid/content/Context;

    .line 31
    return-void
.end method


# virtual methods
.method public getDevName()Ljava/lang/String;
    .locals 1

    .line 105
    const-string v0, ""

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 37
    return-void
.end method

.method public setBufferFrame(Lcom/tpms/decode/PackBufferFrame;)V
    .locals 0
    .param p1, "frame"    # Lcom/tpms/decode/PackBufferFrame;

    .line 40
    iput-object p1, p0, Lcom/std/dev/TpmsDataSrc;->BufferFrame:Lcom/tpms/decode/PackBufferFrame;

    .line 41
    return-void
.end method

.method public start()V
    .locals 0

    .line 49
    return-void
.end method

.method public stop()V
    .locals 0

    .line 53
    return-void
.end method

.method public testAddBuf([B)V
    .locals 2
    .param p1, "buf"    # [B

    .line 72
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrc;->BufferFrame:Lcom/tpms/decode/PackBufferFrame;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/tpms/decode/PackBufferFrame;->addBuffer([BI)Z

    .line 73
    return-void
.end method

.method public writeData([B)V
    .locals 0
    .param p1, "datafuf"    # [B

    .line 45
    return-void
.end method
