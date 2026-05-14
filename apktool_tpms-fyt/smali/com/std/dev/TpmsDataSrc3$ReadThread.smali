.class Lcom/std/dev/TpmsDataSrc3$ReadThread;
.super Ljava/lang/Thread;
.source "TpmsDataSrc3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/std/dev/TpmsDataSrc3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/std/dev/TpmsDataSrc3;


# direct methods
.method private constructor <init>(Lcom/std/dev/TpmsDataSrc3;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/std/dev/TpmsDataSrc3$ReadThread;->this$0:Lcom/std/dev/TpmsDataSrc3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/std/dev/TpmsDataSrc3;Lcom/std/dev/TpmsDataSrc3$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/std/dev/TpmsDataSrc3;
    .param p2, "x1"    # Lcom/std/dev/TpmsDataSrc3$1;

    .line 92
    invoke-direct {p0, p1}, Lcom/std/dev/TpmsDataSrc3$ReadThread;-><init>(Lcom/std/dev/TpmsDataSrc3;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 96
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 97
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 98
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0}, Lcom/std/dev/TpmsDataSrc3$ReadThread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/std/dev/TpmsDataSrc3$ReadThread;->this$0:Lcom/std/dev/TpmsDataSrc3;

    iget-object v1, v1, Lcom/std/dev/TpmsDataSrc3;->mPort:Lcom/std/dev/Serialport;

    invoke-virtual {v1, v0}, Lcom/std/dev/Serialport;->read([B)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 109
    const-wide/16 v2, 0x14

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    goto :goto_1

    .line 110
    :catch_0
    move-exception v2

    .line 114
    :goto_1
    goto :goto_0

    .line 116
    :cond_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/std/dev/TpmsDataSrc3$ReadThread;->this$0:Lcom/std/dev/TpmsDataSrc3;

    invoke-static {v3}, Lcom/std/dev/TpmsDataSrc3;->access$100(Lcom/std/dev/TpmsDataSrc3;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/tpms/utils/SLOG;->LogByteArr(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "log":Ljava/lang/String;
    new-array v3, v1, [B

    .line 120
    .local v3, "recBytes":[B
    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget-object v4, p0, Lcom/std/dev/TpmsDataSrc3$ReadThread;->this$0:Lcom/std/dev/TpmsDataSrc3;

    iget-object v4, v4, Lcom/std/dev/TpmsDataSrc3;->BufferFrame:Lcom/tpms/decode/PackBufferFrame;

    array-length v5, v3

    invoke-virtual {v4, v3, v5}, Lcom/tpms/decode/PackBufferFrame;->addBuffer([BI)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 129
    nop

    .end local v2    # "log":Ljava/lang/String;
    .end local v3    # "recBytes":[B
    goto :goto_0

    .line 126
    .end local v1    # "size":I
    :catch_1
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    return-void

    .line 131
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
