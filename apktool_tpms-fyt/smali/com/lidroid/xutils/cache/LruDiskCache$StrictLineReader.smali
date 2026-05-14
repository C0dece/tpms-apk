.class Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/cache/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrictLineReader"
.end annotation


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buf:[B

.field private final charset:Ljava/nio/charset/Charset;

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I

.field final synthetic this$0:Lcom/lidroid/xutils/cache/LruDiskCache;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/io/InputStream;)V
    .locals 1
    .param p2, "in"    # Ljava/io/InputStream;

    .line 1096
    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/io/InputStream;I)V

    .line 1097
    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/io/InputStream;I)V
    .locals 1
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "capacity"    # I

    .line 1108
    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    const-string p1, "US-ASCII"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->charset:Ljava/nio/charset/Charset;

    .line 1109
    if-eqz p2, :cond_1

    .line 1112
    if-ltz p3, :cond_0

    .line 1116
    iput-object p2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    .line 1117
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    .line 1118
    return-void

    .line 1113
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "capacity <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1110
    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;)Ljava/nio/charset/Charset;
    .locals 0

    .line 1076
    iget-object p0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method private fillBuf()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1204
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1205
    .local v0, "result":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1208
    iput v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    .line 1209
    iput v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    .line 1210
    return-void

    .line 1206
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1128
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v0

    .line 1129
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    if-eqz v1, :cond_0

    .line 1130
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    .line 1131
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1128
    :cond_0
    monitor-exit v0

    .line 1134
    return-void

    .line 1128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readLine()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1145
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v0

    .line 1146
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    if-eqz v1, :cond_7

    .line 1153
    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    if-lt v1, v2, :cond_0

    .line 1154
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->fillBuf()V

    .line 1157
    :cond_0
    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    const/16 v3, 0xa

    if-ne v1, v2, :cond_4

    .line 1167
    .end local v1    # "i":I
    new-instance v1, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader$1;

    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader$1;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;I)V

    .line 1180
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    :goto_1
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v5, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    iget v6, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1182
    const/4 v2, -0x1

    iput v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    .line 1183
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->fillBuf()V

    .line 1185
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    .local v2, "i":I
    :goto_2
    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    if-ne v2, v4, :cond_1

    .line 1179
    .end local v2    # "i":I
    goto :goto_1

    .line 1186
    .restart local v2    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    aget-byte v4, v4, v2

    if-ne v4, v3, :cond_3

    .line 1187
    iget v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    if-eq v2, v3, :cond_2

    .line 1188
    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v5, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int v5, v2, v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1190
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1191
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    .line 1192
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1185
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1158
    .end local v2    # "i":I
    .local v1, "i":I
    :cond_4
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    aget-byte v2, v2, v1

    if-ne v2, v3, :cond_6

    .line 1159
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    if-eq v1, v2, :cond_5

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    add-int/lit8 v3, v1, -0x1

    aget-byte v2, v2, v3

    const/16 v3, 0xd

    if-ne v2, v3, :cond_5

    add-int/lit8 v2, v1, -0x1

    goto :goto_3

    :cond_5
    move v2, v1

    .line 1160
    .local v2, "lineEnd":I
    :goto_3
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget v5, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v6, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int v6, v2, v6

    iget-object v7, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1161
    .local v3, "res":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    .line 1162
    monitor-exit v0

    return-object v3

    .line 1157
    .end local v2    # "lineEnd":I
    .end local v3    # "res":Ljava/lang/String;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1147
    .end local v1    # "i":I
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "LineReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method
