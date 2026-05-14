.class public Lcom/std/dev/TpmsDataSrc3;
.super Lcom/std/dev/TpmsDataSrc;
.source "TpmsDataSrc3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/std/dev/TpmsDataSrc3$ReadThread;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field mPort:Lcom/std/dev/Serialport;

.field protected mReadThread:Lcom/std/dev/TpmsDataSrc3$ReadThread;


# direct methods
.method public constructor <init>(Lcom/syt/tmps/TpmsApplication;)V
    .locals 1
    .param p1, "app"    # Lcom/syt/tmps/TpmsApplication;

    .line 34
    invoke-direct {p0, p1}, Lcom/std/dev/TpmsDataSrc;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "TpmsDataSrc3"

    iput-object v0, p0, Lcom/std/dev/TpmsDataSrc3;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/std/dev/TpmsDataSrc3;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/std/dev/TpmsDataSrc3;

    .line 23
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrc3;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private startReadThread()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrc3;->mReadThread:Lcom/std/dev/TpmsDataSrc3$ReadThread;

    if-eqz v0, :cond_0

    return-void

    .line 85
    :cond_0
    :try_start_0
    new-instance v0, Lcom/std/dev/TpmsDataSrc3$ReadThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/std/dev/TpmsDataSrc3$ReadThread;-><init>(Lcom/std/dev/TpmsDataSrc3;Lcom/std/dev/TpmsDataSrc3$1;)V

    iput-object v0, p0, Lcom/std/dev/TpmsDataSrc3;->mReadThread:Lcom/std/dev/TpmsDataSrc3$ReadThread;

    .line 86
    invoke-virtual {v0}, Lcom/std/dev/TpmsDataSrc3$ReadThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 39
    :try_start_0
    new-instance v0, Lcom/std/dev/Serialport;

    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/ttyS1"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x4b00

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/std/dev/Serialport;-><init>(Ljava/io/File;II)V

    iput-object v0, p0, Lcom/std/dev/TpmsDataSrc3;->mPort:Lcom/std/dev/Serialport;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setBufferFrame(Lcom/tpms/decode/PackBufferFrame;)V
    .locals 0
    .param p1, "frame"    # Lcom/tpms/decode/PackBufferFrame;

    .line 48
    iput-object p1, p0, Lcom/std/dev/TpmsDataSrc3;->BufferFrame:Lcom/tpms/decode/PackBufferFrame;

    .line 49
    return-void
.end method

.method public start()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/std/dev/TpmsDataSrc3;->startReadThread()V

    .line 63
    return-void
.end method

.method public stop()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrc3;->mReadThread:Lcom/std/dev/TpmsDataSrc3$ReadThread;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/std/dev/TpmsDataSrc3$ReadThread;->interrupt()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/std/dev/TpmsDataSrc3;->mReadThread:Lcom/std/dev/TpmsDataSrc3$ReadThread;

    .line 71
    iget-object v1, p0, Lcom/std/dev/TpmsDataSrc3;->mPort:Lcom/std/dev/Serialport;

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v1}, Lcom/std/dev/Serialport;->close()V

    .line 73
    iput-object v0, p0, Lcom/std/dev/TpmsDataSrc3;->mPort:Lcom/std/dev/Serialport;

    .line 77
    :cond_0
    return-void
.end method

.method public writeData([B)V
    .locals 2
    .param p1, "databuf"    # [B

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/std/dev/TpmsDataSrc3;->mPort:Lcom/std/dev/Serialport;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/std/dev/Serialport;->write([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 59
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
