.class public Lcom/ta/utdid2/b/a/a;
.super Ljava/lang/Object;
.source "AESUtils.java"


# static fields
.field public static a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ta/utdid2/b/a/a;->a:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x37t
        0x44t
        0x43t
        0x31t
        0x42t
        0x45t
        0x32t
        0x32t
        0x35t
        0x38t
        0x35t
        0x35t
        0x34t
        0x43t
        0x46t
        0x30t
        0x32t
        0x43t
        0x35t
        0x37t
        0x42t
        0x37t
        0x38t
        0x45t
        0x37t
        0x34t
        0x30t
        0x41t
        0x35t
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .locals 3

    .line 91
    if-nez p0, :cond_0

    .line 92
    const-string p0, ""

    return-object p0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 94
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :cond_1
    aget-byte v2, p0, v1

    invoke-static {v0, v2}, Lcom/ta/utdid2/b/a/a;->a(Ljava/lang/StringBuffer;B)V

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuffer;B)V
    .locals 2

    .line 101
    nop

    .line 102
    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    const-string v1, "0123456789ABCDEF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 p1, p1, 0xf

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 5

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 84
    new-array v1, v0, [B

    .line 85
    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    .line 87
    return-object v1

    .line 86
    :cond_0
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static a([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    new-instance p0, Ljava/lang/String;

    sget-object v0, Lcom/ta/utdid2/b/a/a;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-direct {p0, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {p0}, Lcom/ta/utdid2/b/a/a;->a(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static a([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 57
    const-string p0, "AES/CBC/PKCS5Padding"

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 58
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 59
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 58
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 60
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 61
    return-object p0
.end method

.method private static b([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 67
    const-string p0, "AES/CBC/PKCS5Padding"

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 68
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 69
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 68
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 70
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 71
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 16
    nop

    .line 18
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/ta/utdid2/b/a/a;->a([B)[B

    move-result-object p0

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ta/utdid2/b/a/a;->a([B[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    :catch_0
    move-exception p0

    move-object p0, v0

    .line 22
    :goto_0
    if-eqz p0, :cond_0

    .line 23
    invoke-static {p0}, Lcom/ta/utdid2/b/a/a;->a([B)Ljava/lang/String;

    move-result-object p0

    .line 24
    return-object p0

    .line 26
    :cond_0
    return-object v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/ta/utdid2/b/a/a;->a([B)[B

    move-result-object p0

    .line 33
    invoke-static {p1}, Lcom/ta/utdid2/b/a/a;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 34
    invoke-static {p0, p1}, Lcom/ta/utdid2/b/a/a;->b([B[B)[B

    move-result-object p0

    .line 35
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object p1

    .line 37
    :catch_0
    move-exception p0

    .line 39
    const/4 p0, 0x0

    return-object p0
.end method
