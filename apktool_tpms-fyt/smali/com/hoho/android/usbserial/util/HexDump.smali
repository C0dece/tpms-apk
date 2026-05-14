.class public Lcom/hoho/android/usbserial/util/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hoho/android/usbserial/util/HexDump;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [B

    .line 29
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/hoho/android/usbserial/util/HexDump;->dumpHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dumpHexString([BII)Ljava/lang/String;
    .locals 13
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v0, "result":Ljava/lang/StringBuilder;
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 36
    .local v2, "line":[B
    const/4 v3, 0x0

    .line 38
    .local v3, "lineIndex":I
    const-string v4, "\n0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {p1}, Lcom/hoho/android/usbserial/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move v5, p1

    .local v5, "i":I
    :goto_0
    add-int v6, p1, p2

    const/16 v7, 0x7e

    const-string v8, "."

    const/16 v9, 0x20

    const-string v10, " "

    const/4 v11, 0x1

    if-ge v5, v6, :cond_3

    .line 42
    if-ne v3, v1, :cond_2

    .line 43
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v1, :cond_1

    .line 46
    aget-byte v12, v2, v6

    if-le v12, v9, :cond_0

    aget-byte v12, v2, v6

    if-ge v12, v7, :cond_0

    .line 47
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v2, v6, v11}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 49
    :cond_0
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 53
    .end local v6    # "j":I
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {v5}, Lcom/hoho/android/usbserial/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const/4 v3, 0x0

    .line 58
    :cond_2
    aget-byte v6, p0, v5

    .line 59
    .local v6, "b":B
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    sget-object v7, Lcom/hoho/android/usbserial/util/HexDump;->HEX_DIGITS:[C

    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    sget-object v7, Lcom/hoho/android/usbserial/util/HexDump;->HEX_DIGITS:[C

    and-int/lit8 v8, v6, 0xf

    aget-char v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "lineIndex":I
    .local v7, "lineIndex":I
    aput-byte v6, v2, v3

    .line 41
    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_0

    .line 66
    .end local v5    # "i":I
    .end local v7    # "lineIndex":I
    .restart local v3    # "lineIndex":I
    :cond_3
    if-eq v3, v1, :cond_6

    .line 67
    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x3

    .line 68
    .local v1, "count":I
    add-int/2addr v1, v11

    .line 69
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v1, :cond_4

    .line 70
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 73
    .end local v4    # "i":I
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v3, :cond_6

    .line 74
    aget-byte v5, v2, v4

    if-le v5, v9, :cond_5

    aget-byte v5, v2, v4

    if-ge v5, v7, :cond_5

    .line 75
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v4, v11}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 77
    :cond_5
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 82
    .end local v1    # "count":I
    .end local v4    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p0, "hexString"    # Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 153
    .local v0, "length":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 155
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 156
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/hoho/android/usbserial/util/HexDump;->toByte(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    .line 157
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 156
    invoke-static {v5}, Lcom/hoho/android/usbserial/util/HexDump;->toByte(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 155
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 160
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static toByte(C)I
    .locals 3
    .param p0, "c"    # C

    .line 141
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 142
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 143
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 144
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 145
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 146
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 148
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toByteArray(B)[B
    .locals 2
    .param p0, "b"    # B

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 116
    .local v0, "array":[B
    const/4 v1, 0x0

    aput-byte p0, v0, v1

    .line 117
    return-object v0
.end method

.method public static toByteArray(I)[B
    .locals 3
    .param p0, "i"    # I

    .line 121
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 123
    .local v0, "array":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 124
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 125
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 126
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 128
    return-object v0
.end method

.method public static toByteArray(S)[B
    .locals 3
    .param p0, "i"    # S

    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 134
    .local v0, "array":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 135
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 137
    return-object v0
.end method

.method public static toHexString(B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # B

    .line 86
    invoke-static {p0}, Lcom/hoho/android/usbserial/util/HexDump;->toByteArray(B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/hoho/android/usbserial/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .line 107
    invoke-static {p0}, Lcom/hoho/android/usbserial/util/HexDump;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/hoho/android/usbserial/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(S)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # S

    .line 111
    invoke-static {p0}, Lcom/hoho/android/usbserial/util/HexDump;->toByteArray(S)[B

    move-result-object v0

    invoke-static {v0}, Lcom/hoho/android/usbserial/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [B

    .line 90
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/hoho/android/usbserial/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 7
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 94
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [C

    .line 96
    .local v0, "buf":[C
    const/4 v1, 0x0

    .line 97
    .local v1, "bufIndex":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    add-int v3, p1, p2

    if-ge v2, v3, :cond_0

    .line 98
    aget-byte v3, p0, v2

    .line 99
    .local v3, "b":B
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "bufIndex":I
    .local v4, "bufIndex":I
    sget-object v5, Lcom/hoho/android/usbserial/util/HexDump;->HEX_DIGITS:[C

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    aput-char v6, v0, v1

    .line 100
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "bufIndex":I
    .restart local v1    # "bufIndex":I
    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 97
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
