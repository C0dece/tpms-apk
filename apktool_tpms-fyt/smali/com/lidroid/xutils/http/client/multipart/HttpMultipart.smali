.class Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;
.super Ljava/lang/Object;
.source "HttpMultipart.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$lidroid$xutils$http$client$multipart$HttpMultipartMode:[I

.field private static final CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final charset:Ljava/nio/charset/Charset;

.field private final mode:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;",
            ">;"
        }
    .end annotation
.end field

.field private subType:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lidroid$xutils$http$client$multipart$HttpMultipartMode()[I
    .locals 3

    .line 38
    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->$SWITCH_TABLE$com$lidroid$xutils$http$client$multipart$HttpMultipartMode:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->values()[Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    invoke-virtual {v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->STRICT:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    invoke-virtual {v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    sput-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->$SWITCH_TABLE$com$lidroid$xutils$http$client$multipart$HttpMultipartMode:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 82
    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, ": "

    invoke-static {v0, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    .line 83
    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\r\n"

    invoke-static {v0, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    .line 84
    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "--"

    invoke-static {v0, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "boundary"    # Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 1
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "boundary"    # Ljava/lang/String;

    .line 128
    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->STRICT:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;)V
    .locals 2
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "boundary"    # Ljava/lang/String;
    .param p4, "mode"    # Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    if-eqz p1, :cond_2

    .line 108
    if-eqz p3, :cond_1

    .line 111
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->subType:Ljava/lang/String;

    .line 112
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    :goto_0
    iput-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    .line 113
    iput-object p3, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->boundary:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->parts:Ljava/util/List;

    .line 115
    iput-object p4, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->mode:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    .line 116
    return-void

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Multipart boundary may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Multipart subtype may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doWriteTo(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;Ljava/io/OutputStream;Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;Z)V
    .locals 15
    .param p1, "mode"    # Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "callBackInfo"    # Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;
    .param p4, "writeContent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 181
    iget-object v3, v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->getBoundary()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v3

    .line 182
    .local v3, "boundary":Lorg/apache/http/util/ByteArrayBuffer;
    iget-object v4, v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->parts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 232
    sget-object v4, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v4, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 233
    iget-wide v4, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object v7, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v7}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v4, v7

    iput-wide v4, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 234
    invoke-static {v3, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 235
    iget-wide v4, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    invoke-virtual {v3}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v4, v7

    iput-wide v4, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 236
    sget-object v4, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v4, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 237
    iget-wide v4, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object v7, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v7}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v4, v7

    iput-wide v4, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 238
    sget-object v4, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v4, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 239
    iget-wide v4, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object v7, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v7}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v4, v7

    iput-wide v4, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 240
    invoke-virtual {v2, v6}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->doCallBack(Z)Z

    .line 241
    return-void

    .line 182
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;

    .line 183
    .local v5, "part":Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;
    invoke-virtual {v2, v6}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->doCallBack(Z)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 186
    sget-object v7, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v7, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 187
    iget-wide v7, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object v9, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v9}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 188
    invoke-static {v3, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 189
    iget-wide v7, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    invoke-virtual {v3}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 190
    sget-object v7, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v7, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 191
    iget-wide v7, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object v9, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v9}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 193
    invoke-virtual {v5}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->getHeader()Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    move-result-object v7

    .line 195
    .local v7, "header":Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;
    invoke-static {}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->$SWITCH_TABLE$com$lidroid$xutils$http$client$multipart$HttpMultipartMode()[I

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v6, :cond_2

    const/4 v6, 0x2

    if-eq v8, v6, :cond_1

    goto/16 :goto_2

    .line 206
    :cond_1
    const-string v6, "Content-Disposition"

    invoke-virtual {v7, v6}, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->getField(Ljava/lang/String;)Lcom/lidroid/xutils/http/client/multipart/MinimalField;

    move-result-object v6

    .line 207
    .local v6, "cd":Lcom/lidroid/xutils/http/client/multipart/MinimalField;
    iget-object v8, v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-static {v6, v8, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeField(Lcom/lidroid/xutils/http/client/multipart/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 208
    iget-wide v8, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    iget-object v10, v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    .line 209
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getBody()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 208
    invoke-static {v10, v11}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v10

    .line 209
    invoke-virtual {v10}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v10

    sget-object v11, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v11}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v11

    .line 208
    add-int/2addr v10, v11

    .line 209
    sget-object v11, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v11}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v11

    add-int/2addr v10, v11

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 210
    invoke-virtual {v5}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->getBody()Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

    move-result-object v8

    invoke-interface {v8}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v8

    .line 211
    .local v8, "filename":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 212
    const-string v9, "Content-Type"

    invoke-virtual {v7, v9}, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->getField(Ljava/lang/String;)Lcom/lidroid/xutils/http/client/multipart/MinimalField;

    move-result-object v9

    .line 213
    .local v9, "ct":Lcom/lidroid/xutils/http/client/multipart/MinimalField;
    iget-object v10, v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-static {v9, v10, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeField(Lcom/lidroid/xutils/http/client/multipart/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 214
    iget-wide v10, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    iget-object v12, v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    .line 215
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getBody()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 214
    invoke-static {v12, v13}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v12

    .line 215
    invoke-virtual {v12}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v12

    sget-object v13, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v13}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v13

    .line 214
    add-int/2addr v12, v13

    .line 215
    sget-object v13, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v13}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v13

    add-int/2addr v12, v13

    int-to-long v12, v12

    add-long/2addr v10, v12

    iput-wide v10, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 217
    .end local v9    # "ct":Lcom/lidroid/xutils/http/client/multipart/MinimalField;
    goto :goto_2

    .line 197
    .end local v6    # "cd":Lcom/lidroid/xutils/http/client/multipart/MinimalField;
    .end local v8    # "filename":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    .line 202
    nop

    .line 221
    :cond_3
    :goto_2
    sget-object v6, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v6, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 222
    iget-wide v8, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object v6, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v6}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v6

    int-to-long v10, v6

    add-long/2addr v8, v10

    iput-wide v8, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    .line 224
    if-eqz p4, :cond_4

    .line 225
    invoke-virtual {v5}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->getBody()Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

    move-result-object v6

    .line 226
    .local v6, "body":Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;
    invoke-interface {v6, v2}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->setCallBackInfo(Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;)V

    .line 227
    invoke-interface {v6, v1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->writeTo(Ljava/io/OutputStream;)V

    .line 229
    .end local v6    # "body":Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;
    :cond_4
    sget-object v6, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v6, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 230
    iget-wide v8, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object v6, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v6}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v6

    int-to-long v10, v6

    add-long/2addr v8, v10

    iput-wide v8, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    goto/16 :goto_0

    .line 197
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lidroid/xutils/http/client/multipart/MinimalField;

    .line 198
    .local v8, "field":Lcom/lidroid/xutils/http/client/multipart/MinimalField;
    invoke-static {v8, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeField(Lcom/lidroid/xutils/http/client/multipart/MinimalField;Ljava/io/OutputStream;)V

    .line 199
    iget-wide v9, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    sget-object v11, Lcom/lidroid/xutils/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 200
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getBody()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 199
    invoke-static {v11, v12}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v11

    .line 200
    invoke-virtual {v11}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v11

    sget-object v12, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v12}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v12

    .line 199
    add-int/2addr v11, v12

    .line 200
    sget-object v12, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v12}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v12

    add-int/2addr v11, v12

    int-to-long v11, v11

    add-long/2addr v9, v11

    iput-wide v9, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    goto :goto_1

    .line 184
    .end local v7    # "header":Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;
    .end local v8    # "field":Lcom/lidroid/xutils/http/client/multipart/MinimalField;
    :cond_6
    new-instance v4, Ljava/io/InterruptedIOException;

    const-string v6, "cancel"

    invoke-direct {v4, v6}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v4

    :goto_4
    goto :goto_3
.end method

.method private doWriteTo(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "mode"    # Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "writeContent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->DEFAULT:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->doWriteTo(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;Ljava/io/OutputStream;Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;Z)V

    .line 171
    return-void
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;
    .locals 5
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "string"    # Ljava/lang/String;

    .line 42
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 43
    .local v0, "encoded":Ljava/nio/ByteBuffer;
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 44
    .local v1, "bab":Lorg/apache/http/util/ByteArrayBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 45
    return-object v1
.end method

.method private static writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    .line 63
    .local v0, "b":Lorg/apache/http/util/ByteArrayBuffer;
    invoke-static {v0, p1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 64
    return-void
.end method

.method private static writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-static {p1, p0}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    .line 57
    .local v0, "b":Lorg/apache/http/util/ByteArrayBuffer;
    invoke-static {v0, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 58
    return-void
.end method

.method private static writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "b"    # Lorg/apache/http/util/ByteArrayBuffer;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 51
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 52
    return-void
.end method

.method private static writeField(Lcom/lidroid/xutils/http/client/multipart/MinimalField;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "field"    # Lcom/lidroid/xutils/http/client/multipart/MinimalField;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 69
    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 70
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 71
    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 72
    return-void
.end method

.method private static writeField(Lcom/lidroid/xutils/http/client/multipart/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "field"    # Lcom/lidroid/xutils/http/client/multipart/MinimalField;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 77
    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 78
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 79
    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 80
    return-void
.end method


# virtual methods
.method public addBodyPart(Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;)V
    .locals 1
    .param p1, "part"    # Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;

    .line 156
    if-nez p1, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method

.method public getBodyParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->parts:Ljava/util/List;

    return-object v0
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getMode()Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->mode:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalLength()J
    .locals 12

    .line 268
    const-wide/16 v0, 0x0

    .line 269
    .local v0, "contentLen":J
    iget-object v2, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->parts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, -0x1

    if-nez v3, :cond_0

    .line 278
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 280
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->mode:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    const/4 v6, 0x0

    invoke-direct {p0, v3, v2, v6}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->doWriteTo(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    .line 281
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 282
    .local v3, "extra":[B
    array-length v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v4

    add-long/2addr v4, v0

    return-wide v4

    .line 283
    .end local v3    # "extra":[B
    :catchall_0
    move-exception v3

    .line 285
    .local v3, "ex":Ljava/lang/Throwable;
    return-wide v4

    .line 269
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "ex":Ljava/lang/Throwable;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;

    .line 270
    .local v3, "part":Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;
    invoke-virtual {v3}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->getBody()Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

    move-result-object v6

    .line 271
    .local v6, "body":Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;
    invoke-interface {v6}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getContentLength()J

    move-result-wide v7

    .line 272
    .local v7, "len":J
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-ltz v11, :cond_1

    .line 273
    add-long/2addr v0, v7

    .line 274
    goto :goto_0

    .line 275
    :cond_1
    return-wide v4
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0
    .param p1, "subType"    # Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->subType:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "callBackInfo"    # Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->mode:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->doWriteTo(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;Ljava/io/OutputStream;Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;Z)V

    .line 252
    return-void
.end method
