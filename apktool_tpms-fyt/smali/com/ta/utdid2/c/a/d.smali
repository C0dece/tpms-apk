.class public Lcom/ta/utdid2/c/a/d;
.super Ljava/lang/Object;
.source "TransactionXMLFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/c/a/d$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/File;

.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/io/File;",
            "Lcom/ta/utdid2/c/a/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/c/a/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/c/a/d;->b:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/c/a/d;->a:Ljava/util/HashMap;

    .line 31
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/c/a/d;->a:Ljava/io/File;

    .line 33
    nop

    .line 36
    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Directory can not be empty"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()Ljava/io/File;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/c/a/d;->a:Ljava/io/File;

    monitor-exit v0

    return-object v1

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static a(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 139
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".bak"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 39
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 40
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string p2, " contains a path separator"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .line 27
    sget-object v0, Lcom/ta/utdid2/c/a/d;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 138
    invoke-static {p0}, Lcom/ta/utdid2/c/a/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/ta/utdid2/c/a/d;->a()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ".xml"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ta/utdid2/c/a/d;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;
    .locals 9

    .line 58
    invoke-direct {p0, p1}, Lcom/ta/utdid2/c/a/d;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 59
    sget-object v0, Lcom/ta/utdid2/c/a/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/c/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ta/utdid2/c/a/d$a;

    .line 61
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ta/utdid2/c/a/d$a;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    monitor-exit v0

    return-object v1

    .line 59
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    .line 66
    nop

    .line 67
    invoke-static {p1}, Lcom/ta/utdid2/c/a/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 70
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 73
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 75
    :cond_2
    nop

    .line 76
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 78
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 79
    :try_start_2
    invoke-static {v0}, Lcom/ta/utdid2/c/a/e;->a(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v2

    .line 80
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    nop

    .line 112
    nop

    .line 114
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    :goto_0
    goto/16 :goto_11

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 111
    :catchall_1
    move-exception p1

    move-object v2, v0

    goto/16 :goto_e

    .line 109
    :catch_0
    move-exception v3

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_1

    .line 101
    :catch_1
    move-exception v3

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_2

    .line 99
    :catch_2
    move-exception v3

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_3

    .line 81
    :catch_3
    move-exception v3

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_6

    .line 111
    :catchall_2
    move-exception p1

    goto/16 :goto_e

    .line 109
    :catch_4
    move-exception v3

    move-object v0, v2

    .line 110
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 112
    if-eqz v2, :cond_3

    .line 114
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    .line 115
    :catchall_3
    move-exception v2

    goto :goto_4

    .line 101
    :catch_5
    move-exception v3

    move-object v0, v2

    .line 102
    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 112
    if-eqz v2, :cond_3

    .line 114
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    .line 115
    :catchall_4
    move-exception v2

    goto :goto_4

    .line 99
    :catch_6
    move-exception v3

    move-object v0, v2

    .line 100
    :goto_3
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 112
    if-eqz v2, :cond_3

    .line 114
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 115
    :goto_4
    goto :goto_5

    :catchall_5
    move-exception v2

    goto :goto_4

    .line 122
    :cond_3
    :goto_5
    move-object v2, v0

    goto/16 :goto_11

    .line 81
    :catch_7
    move-exception v0

    move-object v0, v2

    .line 83
    :goto_6
    :try_start_a
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 84
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v2

    new-array v4, v2, [B

    .line 85
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 86
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "UTF-8"

    invoke-direct {v5, v4, v6, v2, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 87
    nop

    .line 92
    nop

    .line 94
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 95
    :goto_7
    goto :goto_a

    :catchall_6
    move-exception v2

    goto :goto_7

    .line 89
    :catch_8
    move-exception v2

    goto :goto_8

    .line 87
    :catch_9
    move-exception v2

    goto :goto_9

    .line 91
    :catchall_7
    move-exception p1

    goto :goto_b

    .line 89
    :catch_a
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    .line 90
    :goto_8
    :try_start_d
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 92
    if-eqz v3, :cond_4

    .line 94
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_7

    .line 87
    :catch_b
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    .line 88
    :goto_9
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 92
    if-eqz v3, :cond_4

    .line 94
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_7

    .line 112
    :cond_4
    :goto_a
    if-eqz v3, :cond_3

    .line 114
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    goto :goto_4

    .line 115
    :catchall_8
    move-exception v2

    goto :goto_4

    .line 91
    :catchall_9
    move-exception p1

    move-object v2, v3

    .line 92
    :goto_b
    if-eqz v2, :cond_5

    .line 94
    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    .line 95
    :goto_c
    goto :goto_d

    :catchall_a
    move-exception p2

    goto :goto_c

    .line 98
    :cond_5
    :goto_d
    :try_start_13
    throw p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 112
    :goto_e
    if-eqz v2, :cond_6

    .line 114
    :try_start_14
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    .line 115
    :goto_f
    goto :goto_10

    :catchall_b
    move-exception p2

    goto :goto_f

    .line 118
    :cond_6
    :goto_10
    throw p1

    .line 122
    :cond_7
    :goto_11
    sget-object v3, Lcom/ta/utdid2/c/a/d;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 123
    if-eqz v1, :cond_8

    .line 126
    :try_start_15
    invoke-virtual {v1, v2}, Lcom/ta/utdid2/c/a/d$a;->a(Ljava/util/Map;)V

    .line 127
    goto :goto_12

    .line 128
    :cond_8
    iget-object v0, p0, Lcom/ta/utdid2/c/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ta/utdid2/c/a/d$a;

    .line 129
    if-nez v1, :cond_9

    .line 130
    new-instance v1, Lcom/ta/utdid2/c/a/d$a;

    invoke-direct {v1, p1, p2, v2}, Lcom/ta/utdid2/c/a/d$a;-><init>(Ljava/io/File;ILjava/util/Map;)V

    .line 131
    iget-object p2, p0, Lcom/ta/utdid2/c/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_9
    :goto_12
    monitor-exit v3

    return-object v1

    .line 122
    :catchall_c
    move-exception p1

    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    throw p1

    .line 59
    :catchall_d
    move-exception p1

    :try_start_16
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    goto :goto_14

    :goto_13
    throw p1

    :goto_14
    goto :goto_13
.end method
