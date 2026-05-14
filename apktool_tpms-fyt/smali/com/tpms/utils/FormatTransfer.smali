.class public Lcom/tpms/utils/FormatTransfer;
.super Ljava/lang/Object;
.source "FormatTransfer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesReverseOrder([B)[B
    .locals 5
    .param p0, "b"    # [B

    .line 254
    array-length v0, p0

    .line 255
    .local v0, "length":I
    new-array v1, v0, [B

    .line 256
    .local v1, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 257
    sub-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v4, p0, v2

    aput-byte v4, v1, v3

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "result":Ljava/lang/StringBuffer;
    array-length v1, p0

    .line 114
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 115
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static hBytesToFloat([B)F
    .locals 4
    .param p0, "b"    # [B

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "i":I
    new-instance v1, Ljava/lang/Float;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/lang/Float;-><init>(D)V

    .line 233
    .local v1, "F":Ljava/lang/Float;
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 234
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2
.end method

.method public static hBytesToInt([B)I
    .locals 4
    .param p0, "b"    # [B

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "s":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 139
    aget-byte v2, p0, v1

    if-ltz v2, :cond_0

    .line 140
    aget-byte v2, p0, v1

    add-int/2addr v0, v2

    goto :goto_1

    .line 142
    :cond_0
    add-int/lit16 v2, v0, 0x100

    aget-byte v3, p0, v1

    add-int v0, v2, v3

    .line 144
    :goto_1
    mul-int/lit16 v0, v0, 0x100

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_1
    aget-byte v1, p0, v2

    if-ltz v1, :cond_2

    .line 147
    aget-byte v1, p0, v2

    add-int/2addr v0, v1

    goto :goto_2

    .line 149
    :cond_2
    add-int/lit16 v1, v0, 0x100

    aget-byte v2, p0, v2

    add-int v0, v1, v2

    .line 151
    :goto_2
    return v0
.end method

.method public static hBytesToShort([B)S
    .locals 3
    .param p0, "b"    # [B

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "s":I
    const/4 v1, 0x0

    aget-byte v2, p0, v1

    if-ltz v2, :cond_0

    .line 187
    aget-byte v1, p0, v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 189
    :cond_0
    add-int/lit16 v2, v0, 0x100

    aget-byte v1, p0, v1

    add-int v0, v2, v1

    .line 191
    :goto_0
    mul-int/lit16 v0, v0, 0x100

    .line 192
    const/4 v1, 0x1

    aget-byte v2, p0, v1

    if-ltz v2, :cond_1

    .line 193
    aget-byte v1, p0, v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 195
    :cond_1
    add-int/lit16 v2, v0, 0x100

    aget-byte v1, p0, v1

    add-int v0, v2, v1

    .line 197
    :goto_1
    int-to-short v1, v0

    .line 198
    .local v1, "result":S
    return v1
.end method

.method public static lBytesToFloat([B)F
    .locals 4
    .param p0, "b"    # [B

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "i":I
    new-instance v1, Ljava/lang/Float;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/lang/Float;-><init>(D)V

    .line 246
    .local v1, "F":Ljava/lang/Float;
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 247
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2
.end method

.method public static lBytesToInt([B)I
    .locals 4
    .param p0, "b"    # [B

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "s":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 163
    rsub-int/lit8 v3, v1, 0x3

    aget-byte v3, p0, v3

    if-ltz v3, :cond_0

    .line 164
    sub-int/2addr v2, v1

    aget-byte v2, p0, v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 166
    :cond_0
    add-int/lit16 v3, v0, 0x100

    sub-int/2addr v2, v1

    aget-byte v2, p0, v2

    add-int v0, v3, v2

    .line 168
    :goto_1
    mul-int/lit16 v0, v0, 0x100

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    aget-byte v2, p0, v1

    if-ltz v2, :cond_2

    .line 171
    aget-byte v1, p0, v1

    add-int/2addr v0, v1

    goto :goto_2

    .line 173
    :cond_2
    add-int/lit16 v2, v0, 0x100

    aget-byte v1, p0, v1

    add-int v0, v2, v1

    .line 175
    :goto_2
    return v0
.end method

.method public static lBytesToShort([B)S
    .locals 3
    .param p0, "b"    # [B

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "s":I
    const/4 v1, 0x1

    aget-byte v2, p0, v1

    if-ltz v2, :cond_0

    .line 210
    aget-byte v1, p0, v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 212
    :cond_0
    add-int/lit16 v2, v0, 0x100

    aget-byte v1, p0, v1

    add-int v0, v2, v1

    .line 214
    :goto_0
    mul-int/lit16 v0, v0, 0x100

    .line 215
    const/4 v1, 0x0

    aget-byte v2, p0, v1

    if-ltz v2, :cond_1

    .line 216
    aget-byte v1, p0, v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 218
    :cond_1
    add-int/lit16 v2, v0, 0x100

    aget-byte v1, p0, v1

    add-int v0, v2, v1

    .line 220
    :goto_1
    int-to-short v1, v0

    .line 221
    .local v1, "result":S
    return v1
.end method

.method public static logBytes([B)V
    .locals 5
    .param p0, "bb"    # [B

    .line 274
    array-length v0, p0

    .line 275
    .local v0, "length":I
    const-string v1, ""

    .line 276
    .local v1, "out":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public static printBytes([B)V
    .locals 5
    .param p0, "bb"    # [B

    .line 266
    array-length v0, p0

    .line 267
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 268
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public static reverseFloat(F)F
    .locals 1
    .param p0, "f"    # F

    .line 311
    invoke-static {p0}, Lcom/tpms/utils/FormatTransfer;->toLH(F)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tpms/utils/FormatTransfer;->hBytesToFloat([B)F

    move-result v0

    .line 312
    .local v0, "result":F
    return v0
.end method

.method public static reverseInt(I)I
    .locals 1
    .param p0, "i"    # I

    .line 289
    invoke-static {p0}, Lcom/tpms/utils/FormatTransfer;->toLH(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tpms/utils/FormatTransfer;->hBytesToInt([B)I

    move-result v0

    .line 290
    .local v0, "result":I
    return v0
.end method

.method public static reverseShort(S)S
    .locals 1
    .param p0, "s"    # S

    .line 300
    invoke-static {p0}, Lcom/tpms/utils/FormatTransfer;->toLH(S)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tpms/utils/FormatTransfer;->hBytesToShort([B)S

    move-result v0

    .line 301
    .local v0, "result":S
    return v0
.end method

.method public static stringToBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToBytes(Ljava/lang/String;I)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "length"    # I

    .line 99
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static toHH(F)[B
    .locals 1
    .param p0, "f"    # F

    .line 92
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcom/tpms/utils/FormatTransfer;->toHH(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static toHH(I)[B
    .locals 3
    .param p0, "n"    # I

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 34
    .local v0, "b":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 35
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 36
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 37
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 38
    return-object v0
.end method

.method public static toHH(S)[B
    .locals 3
    .param p0, "n"    # S

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 62
    .local v0, "b":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 63
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 64
    return-object v0
.end method

.method public static toLH(F)[B
    .locals 1
    .param p0, "f"    # F

    .line 85
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcom/tpms/utils/FormatTransfer;->toLH(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static toLH(I)[B
    .locals 3
    .param p0, "n"    # I

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 19
    .local v0, "b":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 20
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 21
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 22
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 23
    return-object v0
.end method

.method public static toLH(S)[B
    .locals 3
    .param p0, "n"    # S

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 49
    .local v0, "b":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 50
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 51
    return-object v0
.end method
