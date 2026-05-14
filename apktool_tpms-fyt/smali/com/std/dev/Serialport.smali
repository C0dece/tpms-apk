.class public Lcom/std/dev/Serialport;
.super Ljava/lang/Object;
.source "Serialport.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Serialport"


# instance fields
.field private mFd:Ljava/io/FileDescriptor;

.field private mFileInputStream:Ljava/io/FileInputStream;

.field private mFileOutputStream:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    const-string v0, "stdSerialport"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/File;II)V
    .locals 4
    .param p1, "device"    # Ljava/io/File;
    .param p2, "baudrate"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "/system/bin/su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 34
    .local v0, "su":Ljava/lang/Process;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 666 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nexit\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    .line 44
    .end local v0    # "su":Ljava/lang/Process;
    .end local v1    # "cmd":Ljava/lang/String;
    nop

    .line 47
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/std/dev/Serialport;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/std/dev/Serialport;->mFd:Ljava/io/FileDescriptor;

    .line 48
    if-eqz v0, :cond_2

    .line 52
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/std/dev/Serialport;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/std/dev/Serialport;->mFileInputStream:Ljava/io/FileInputStream;

    .line 53
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/std/dev/Serialport;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/std/dev/Serialport;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 54
    return-void

    .line 49
    :cond_2
    const-string v0, "Serialport"

    const-string v1, "native open returns null"

    invoke-static {v0, v1}, Lcom/tpms/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 39
    .restart local v0    # "su":Ljava/lang/Process;
    .restart local v1    # "cmd":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2}, Ljava/lang/SecurityException;-><init>()V

    .end local p1    # "device":Ljava/io/File;
    .end local p2    # "baudrate":I
    .end local p3    # "flags":I
    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    .end local v0    # "su":Ljava/lang/Process;
    .end local v1    # "cmd":Ljava/lang/String;
    .restart local p1    # "device":Ljava/io/File;
    .restart local p2    # "baudrate":I
    .restart local p3    # "flags":I
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1
.end method

.method public static native close(Ljava/io/FileDescriptor;)V
.end method

.method public static native open(Ljava/lang/String;II)Ljava/io/FileDescriptor;
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/std/dev/Serialport;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 82
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/std/dev/Serialport;->mFileOutputStream:Ljava/io/FileOutputStream;

    .line 85
    :try_start_1
    iget-object v1, p0, Lcom/std/dev/Serialport;->mFileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    goto :goto_1

    .line 86
    :catch_1
    move-exception v1

    .line 88
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    iput-object v0, p0, Lcom/std/dev/Serialport;->mFileInputStream:Ljava/io/FileInputStream;

    .line 92
    iget-object v1, p0, Lcom/std/dev/Serialport;->mFd:Ljava/io/FileDescriptor;

    invoke-static {v1}, Lcom/std/dev/OsWrap;->close(Ljava/io/FileDescriptor;)V

    .line 94
    iput-object v0, p0, Lcom/std/dev/Serialport;->mFd:Ljava/io/FileDescriptor;

    .line 95
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/std/dev/Serialport;->mFileInputStream:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/std/dev/Serialport;->mFileOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/std/dev/Serialport;->mFileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public write([BI)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/std/dev/Serialport;->mFileOutputStream:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 62
    return-void
.end method
