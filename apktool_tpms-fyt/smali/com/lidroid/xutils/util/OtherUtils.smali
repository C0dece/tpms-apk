.class public Lcom/lidroid/xutils/util/OtherUtils;
.super Ljava/lang/Object;
.source "OtherUtils.java"


# static fields
.field private static final STRING_BUFFER_LENGTH:I = 0x64

.field private static sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static getAvailableSpace(Ljava/io/File;)J
    .locals 5
    .param p0, "dir"    # Ljava/io/File;

    .line 129
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "stats":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v3, v3

    mul-long v1, v1, v3

    return-wide v1

    .line 131
    .end local v0    # "stats":Landroid/os/StatFs;
    :catchall_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public static getCallerStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 2

    .line 225
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getCharsetFromHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/nio/charset/Charset;
    .locals 8
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;

    .line 171
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 172
    :cond_0
    const/4 v1, 0x0

    .line 173
    .local v1, "charsetName":Ljava/lang/String;
    const-string v2, "Content-Type"

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 174
    .local v2, "header":Lorg/apache/http/Header;
    if-eqz v2, :cond_3

    .line 175
    invoke-interface {v2}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_1

    goto :goto_1

    :cond_1
    aget-object v6, v3, v5

    .line 176
    .local v6, "element":Lorg/apache/http/HeaderElement;
    const-string v7, "charset"

    invoke-interface {v6, v7}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v7

    .line 177
    .local v7, "charsetPair":Lorg/apache/http/NameValuePair;
    if-eqz v7, :cond_2

    .line 178
    invoke-interface {v7}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 179
    goto :goto_1

    .line 175
    .end local v6    # "element":Lorg/apache/http/HeaderElement;
    .end local v7    # "charsetPair":Lorg/apache/http/NameValuePair;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 184
    :cond_3
    :goto_1
    const/4 v3, 0x0

    .line 185
    .local v3, "isSupportedCharset":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 187
    :try_start_0
    invoke-static {v1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    .line 188
    :goto_2
    goto :goto_3

    :catchall_0
    move-exception v4

    goto :goto_2

    .line 192
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public static getCurrentStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 2

    .line 221
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirName"    # Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "cachePath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    .line 113
    .local v1, "externalCacheDir":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 117
    .end local v1    # "externalCacheDir":Ljava/io/File;
    :cond_0
    if-nez v0, :cond_1

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 119
    .local v1, "cacheDir":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 124
    .end local v1    # "cacheDir":Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFileNameFromHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 7
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .line 153
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    .line 155
    .local v0, "result":Ljava/lang/String;
    const-string v1, "Content-Disposition"

    invoke-interface {p0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 156
    .local v1, "header":Lorg/apache/http/Header;
    if-eqz v1, :cond_3

    .line 157
    invoke-interface {v1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v5, v2, v4

    .line 158
    .local v5, "element":Lorg/apache/http/HeaderElement;
    const-string v6, "filename"

    invoke-interface {v5, v6}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v6

    .line 159
    .local v6, "fileNamePair":Lorg/apache/http/NameValuePair;
    if-eqz v6, :cond_2

    .line 160
    invoke-interface {v6}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "UTF-8"

    invoke-static {v0, v3, v2}, Lcom/lidroid/xutils/util/CharsetUtils;->toCharset(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 163
    goto :goto_1

    .line 157
    .end local v5    # "element":Lorg/apache/http/HeaderElement;
    .end local v6    # "fileNamePair":Lorg/apache/http/NameValuePair;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static getSubString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 217
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "webUserAgent":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 54
    :try_start_0
    const-string v1, "com.android.internal.R$string"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 55
    .local v1, "sysResCls":Ljava/lang/Class;
    const-string v2, "web_user_agent"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 56
    .local v2, "webUserAgentField":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 57
    .local v3, "resId":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 58
    .end local v1    # "sysResCls":Ljava/lang/Class;
    .end local v2    # "webUserAgentField":Ljava/lang/reflect/Field;
    .end local v3    # "resId":Ljava/lang/Integer;
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 61
    :cond_0
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const-string v0, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 %sSafari/533.1"

    .line 65
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 66
    .local v1, "locale":Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v2, "buffer":Ljava/lang/StringBuffer;
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 69
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    goto :goto_2

    .line 73
    :cond_2
    const-string v4, "1.0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    :goto_2
    const-string v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "language":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 78
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "country":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 81
    const-string v7, "-"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    .end local v6    # "country":Ljava/lang/String;
    goto :goto_3

    .line 86
    :cond_3
    const-string v6, "en"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    :cond_4
    :goto_3
    sget-object v6, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v7, "REL"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 90
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 91
    .local v6, "model":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 92
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    .end local v6    # "model":Ljava/lang/String;
    :cond_5
    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 97
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 98
    const-string v6, " Build/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    :cond_6
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    const-string v8, "Mobile "

    aput-object v8, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static isSupportRange(Lorg/apache/http/HttpResponse;)Z
    .locals 4
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .line 139
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 140
    :cond_0
    const-string v1, "Accept-Ranges"

    invoke-interface {p0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 141
    .local v1, "header":Lorg/apache/http/Header;
    const-string v2, "bytes"

    if-eqz v1, :cond_1

    .line 142
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 144
    :cond_1
    const-string v3, "Content-Range"

    invoke-interface {p0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_3

    .line 146
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 149
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    return v0
.end method

.method public static sizeOfString(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 198
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-wide/16 v0, 0x0

    return-wide v0

    .line 201
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 202
    .local v0, "len":I
    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 203
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    int-to-long v1, v1

    return-wide v1

    .line 205
    :cond_1
    const-wide/16 v1, 0x0

    .line 206
    .local v1, "size":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v0, :cond_2

    .line 212
    .end local v3    # "i":I
    return-wide v1

    .line 207
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v4, v3, 0x64

    .line 208
    .local v4, "end":I
    if-ge v4, v0, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v0

    :goto_1
    move v4, v5

    .line 209
    invoke-static {p0, v3, v4}, Lcom/lidroid/xutils/util/OtherUtils;->getSubString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "temp":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6

    int-to-long v6, v6

    add-long/2addr v1, v6

    .line 206
    .end local v4    # "end":I
    .end local v5    # "temp":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x64

    goto :goto_0
.end method

.method public static trustAllHttpsURLConnection()V
    .locals 3

    .line 232
    sget-object v0, Lcom/lidroid/xutils/util/OtherUtils;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/lidroid/xutils/util/OtherUtils$1;

    invoke-direct {v2}, Lcom/lidroid/xutils/util/OtherUtils$1;-><init>()V

    aput-object v2, v0, v1

    .line 250
    .local v0, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 251
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 252
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    sput-object v2, Lcom/lidroid/xutils/util/OtherUtils;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    goto :goto_0

    :catchall_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    .end local v0    # "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    sget-object v0, Lcom/lidroid/xutils/util/OtherUtils;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    .line 259
    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 260
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 262
    :cond_1
    return-void
.end method
