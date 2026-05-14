.class public Lcom/ta/utdid2/c/a/c;
.super Ljava/lang/Object;
.source "PersistentConfiguration.java"


# instance fields
.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field private a:Lcom/ta/utdid2/c/a/b$a;

.field private a:Lcom/ta/utdid2/c/a/b;

.field private a:Lcom/ta/utdid2/c/a/d;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->e:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->f:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->g:Z

    .line 23
    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->h:Z

    .line 24
    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    .line 26
    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    .line 27
    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    .line 28
    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    .line 29
    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->mContext:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 31
    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->j:Z

    .line 35
    iput-boolean p4, p0, Lcom/ta/utdid2/c/a/c;->g:Z

    .line 36
    iput-boolean p5, p0, Lcom/ta/utdid2/c/a/c;->j:Z

    .line 37
    iput-object p3, p0, Lcom/ta/utdid2/c/a/c;->e:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/ta/utdid2/c/a/c;->f:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/ta/utdid2/c/a/c;->mContext:Landroid/content/Context;

    .line 40
    nop

    .line 41
    nop

    .line 42
    const-string p4, "t"

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    .line 43
    nop

    .line 44
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 43
    iput-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    .line 45
    invoke-interface {v4, p4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0

    .line 42
    :cond_0
    move-wide v4, v2

    .line 47
    :goto_0
    nop

    .line 49
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_1

    :catch_0
    move-exception v6

    .line 51
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    :goto_1
    invoke-static {v1}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 54
    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->h:Z

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    const-string v6, "mounted"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    .line 57
    iput-boolean v7, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    iput-boolean v7, p0, Lcom/ta/utdid2/c/a/c;->h:Z

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const-string v6, "mounted_ro"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    iput-boolean v7, p0, Lcom/ta/utdid2/c/a/c;->h:Z

    .line 61
    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    iput-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->h:Z

    .line 66
    :goto_2
    iget-boolean v1, p0, Lcom/ta/utdid2/c/a/c;->h:Z

    const-string v6, "t2"

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    if-eqz v1, :cond_e

    .line 67
    :cond_4
    if-eqz p1, :cond_e

    .line 68
    invoke-static {p2}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 69
    invoke-direct {p0, p2}, Lcom/ta/utdid2/c/a/c;->a(Ljava/lang/String;)Lcom/ta/utdid2/c/a/d;

    move-result-object p2

    iput-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 70
    if-eqz p2, :cond_e

    .line 72
    nop

    .line 73
    nop

    .line 74
    nop

    .line 73
    :try_start_1
    invoke-virtual {p2, p3, v0}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object p2

    .line 72
    iput-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    .line 75
    invoke-interface {p2, p4, v2, v3}, Lcom/ta/utdid2/c/a/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 76
    if-nez p5, :cond_8

    .line 77
    cmp-long p2, v4, v7

    if-lez p2, :cond_5

    .line 79
    :try_start_2
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/c/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V

    .line 80
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 81
    nop

    .line 82
    nop

    .line 80
    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    .line 83
    goto/16 :goto_6

    :cond_5
    cmp-long p2, v4, v7

    if-gez p2, :cond_6

    .line 85
    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    iget-object p4, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, p2, p4}, Lcom/ta/utdid2/c/a/c;->a(Lcom/ta/utdid2/c/a/b;Landroid/content/SharedPreferences;)V

    .line 86
    nop

    .line 87
    nop

    .line 86
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    goto :goto_3

    .line 88
    :cond_6
    cmp-long p1, v4, v7

    if-nez p1, :cond_7

    .line 89
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/c/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V

    .line 90
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 91
    nop

    .line 92
    nop

    .line 90
    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    .line 94
    goto/16 :goto_6

    .line 88
    :cond_7
    :goto_3
    goto/16 :goto_6

    .line 95
    :cond_8
    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {p2, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 96
    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-interface {p2, v6, v2, v3}, Lcom/ta/utdid2/c/a/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 97
    cmp-long p2, v4, v7

    if-gez p2, :cond_9

    cmp-long p2, v4, v2

    if-lez p2, :cond_9

    .line 99
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/c/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V

    .line 100
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 101
    nop

    .line 102
    nop

    .line 100
    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    .line 103
    goto/16 :goto_6

    :cond_9
    cmp-long p2, v4, v7

    if-lez p2, :cond_a

    cmp-long p2, v7, v2

    if-lez p2, :cond_a

    .line 105
    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    iget-object p4, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, p2, p4}, Lcom/ta/utdid2/c/a/c;->a(Lcom/ta/utdid2/c/a/b;Landroid/content/SharedPreferences;)V

    .line 106
    nop

    .line 107
    nop

    .line 106
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    .line 108
    goto :goto_6

    :cond_a
    cmp-long p2, v4, v2

    if-nez p2, :cond_b

    cmp-long p2, v7, v2

    if-lez p2, :cond_b

    .line 109
    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    iget-object p4, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, p2, p4}, Lcom/ta/utdid2/c/a/c;->a(Lcom/ta/utdid2/c/a/b;Landroid/content/SharedPreferences;)V

    .line 110
    nop

    .line 111
    nop

    .line 110
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    .line 112
    goto :goto_6

    :cond_b
    cmp-long p1, v7, v2

    if-nez p1, :cond_c

    cmp-long p1, v4, v2

    if-lez p1, :cond_c

    .line 113
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/c/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V

    .line 114
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 115
    nop

    .line 116
    nop

    .line 114
    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    goto :goto_4

    .line 117
    :cond_c
    cmp-long p1, v4, v7

    if-nez p1, :cond_d

    .line 118
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-direct {p0, p1, p2}, Lcom/ta/utdid2/c/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V

    .line 119
    iget-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 120
    nop

    .line 121
    nop

    .line 119
    invoke-virtual {p1, p3, v0}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 117
    :cond_d
    :goto_4
    goto :goto_6

    .line 124
    :catch_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    move-wide v7, v2

    :goto_5
    goto :goto_6

    .line 131
    :cond_e
    move-wide v7, v2

    :goto_6
    cmp-long p1, v4, v7

    if-nez p1, :cond_f

    cmp-long p1, v4, v2

    if-nez p1, :cond_12

    cmp-long p1, v7, v2

    if-nez p1, :cond_12

    .line 132
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 133
    iget-boolean p3, p0, Lcom/ta/utdid2/c/a/c;->j:Z

    if-eqz p3, :cond_10

    .line 134
    if-eqz p3, :cond_12

    cmp-long p3, v4, v2

    if-nez p3, :cond_12

    cmp-long p3, v7, v2

    if-nez p3, :cond_12

    .line 135
    :cond_10
    iget-object p3, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz p3, :cond_11

    .line 136
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 137
    invoke-interface {p3, v6, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    :cond_11
    :try_start_3
    iget-object p3, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    if-eqz p3, :cond_12

    .line 142
    iget-object p3, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-interface {p3}, Lcom/ta/utdid2/c/a/b;->a()Lcom/ta/utdid2/c/a/b$a;

    move-result-object p3

    .line 143
    invoke-interface {p3, v6, p1, p2}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;J)Lcom/ta/utdid2/c/a/b$a;

    .line 144
    invoke-interface {p3}, Lcom/ta/utdid2/c/a/b$a;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    .line 146
    :catch_3
    move-exception p1

    :goto_7
    nop

    .line 151
    :cond_12
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/ta/utdid2/c/a/d;
    .locals 1

    .line 154
    invoke-direct {p0, p1}, Lcom/ta/utdid2/c/a/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 155
    if-eqz p1, :cond_0

    .line 156
    new-instance v0, Lcom/ta/utdid2/c/a/d;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ta/utdid2/c/a/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    .line 157
    return-object v0

    .line 159
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 163
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_1

    .line 165
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    .line 165
    const-string p1, "%s%s%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 170
    :cond_0
    return-object v1

    .line 172
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V
    .locals 4

    .line 176
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 177
    invoke-interface {p2}, Lcom/ta/utdid2/c/a/b;->a()Lcom/ta/utdid2/c/a/b$a;

    move-result-object p2

    .line 178
    if-eqz p2, :cond_6

    .line 179
    invoke-interface {p2}, Lcom/ta/utdid2/c/a/b$a;->b()Lcom/ta/utdid2/c/a/b$a;

    .line 180
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 181
    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-interface {p2}, Lcom/ta/utdid2/c/a/b$a;->commit()Z

    goto :goto_2

    .line 182
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 185
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 186
    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/c/a/b$a;

    .line 187
    goto :goto_0

    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 188
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b$a;

    .line 189
    goto :goto_0

    :cond_2
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 190
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v1, v2, v3}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;J)Lcom/ta/utdid2/c/a/b$a;

    .line 191
    goto :goto_0

    :cond_3
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_4

    .line 192
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;F)Lcom/ta/utdid2/c/a/b$a;

    goto :goto_1

    .line 193
    :cond_4
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    .line 194
    nop

    .line 195
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 194
    invoke-interface {p2, v1, v0}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;Z)Lcom/ta/utdid2/c/a/b$a;

    goto :goto_0

    .line 193
    :cond_5
    :goto_1
    goto :goto_0

    .line 201
    :cond_6
    :goto_2
    return-void
.end method

.method private a(Lcom/ta/utdid2/c/a/b;Landroid/content/SharedPreferences;)V
    .locals 4

    .line 204
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 205
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 206
    if-eqz p2, :cond_6

    .line 207
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {p1}, Lcom/ta/utdid2/c/a/b;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 209
    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 210
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 213
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 214
    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 215
    goto :goto_0

    :cond_1
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 216
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 217
    goto :goto_0

    :cond_2
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 218
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 219
    goto :goto_0

    :cond_3
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_4

    .line 220
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 221
    :cond_4
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    .line 222
    nop

    .line 223
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 222
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 221
    :cond_5
    :goto_1
    goto :goto_0

    .line 229
    :cond_6
    :goto_2
    return-void
.end method

.method private b()Z
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    if-eqz v0, :cond_1

    .line 233
    invoke-interface {v0}, Lcom/ta/utdid2/c/a/b;->a()Z

    move-result v0

    .line 234
    if-nez v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/ta/utdid2/c/a/c;->commit()Z

    .line 237
    :cond_0
    return v0

    .line 239
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private c()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/ta/utdid2/c/a/c;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    if-eqz v0, :cond_1

    .line 247
    invoke-interface {v0}, Lcom/ta/utdid2/c/a/b;->a()Lcom/ta/utdid2/c/a/b$a;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    .line 249
    :cond_1
    invoke-direct {p0}, Lcom/ta/utdid2/c/a/c;->b()Z

    .line 250
    return-void
.end method


# virtual methods
.method public commit()Z
    .locals 6

    .line 368
    nop

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 370
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 371
    iget-boolean v4, p0, Lcom/ta/utdid2/c/a/c;->j:Z

    if-nez v4, :cond_0

    .line 372
    iget-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_0

    .line 373
    const-string v4, "t"

    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    const/4 v0, 0x0

    goto :goto_0

    .line 380
    :cond_1
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_2

    .line 381
    iget-object v1, p0, Lcom/ta/utdid2/c/a/c;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 382
    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->e:Ljava/lang/String;

    .line 383
    nop

    .line 382
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    .line 386
    :cond_2
    const/4 v1, 0x0

    .line 388
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    goto :goto_1

    :catch_0
    move-exception v2

    .line 390
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 392
    :goto_1
    invoke-static {v1}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 393
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 394
    iget-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    if-nez v4, :cond_4

    .line 395
    nop

    .line 396
    iget-object v4, p0, Lcom/ta/utdid2/c/a/c;->f:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/ta/utdid2/c/a/c;->a(Ljava/lang/String;)Lcom/ta/utdid2/c/a/d;

    move-result-object v4

    .line 395
    nop

    .line 397
    if-eqz v4, :cond_5

    .line 398
    iget-object v5, p0, Lcom/ta/utdid2/c/a/c;->e:Ljava/lang/String;

    .line 399
    nop

    .line 398
    invoke-virtual {v4, v5, v3}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    .line 400
    iget-boolean v5, p0, Lcom/ta/utdid2/c/a/c;->j:Z

    if-nez v5, :cond_3

    .line 401
    iget-object v5, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, v5, v4}, Lcom/ta/utdid2/c/a/c;->a(Landroid/content/SharedPreferences;Lcom/ta/utdid2/c/a/b;)V

    .line 402
    goto :goto_2

    .line 403
    :cond_3
    iget-object v5, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0, v4, v5}, Lcom/ta/utdid2/c/a/c;->a(Lcom/ta/utdid2/c/a/b;Landroid/content/SharedPreferences;)V

    .line 405
    :goto_2
    iget-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    invoke-interface {v4}, Lcom/ta/utdid2/c/a/b;->a()Lcom/ta/utdid2/c/a/b$a;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    .line 407
    goto :goto_3

    .line 408
    :cond_4
    iget-object v4, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    if-eqz v4, :cond_5

    .line 409
    invoke-interface {v4}, Lcom/ta/utdid2/c/a/b$a;->commit()Z

    move-result v4

    if-nez v4, :cond_5

    .line 410
    const/4 v0, 0x0

    .line 415
    :cond_5
    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 416
    nop

    .line 417
    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 418
    iget-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    if-eqz v1, :cond_7

    .line 420
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    if-eqz v1, :cond_7

    .line 421
    iget-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/d;

    iget-object v2, p0, Lcom/ta/utdid2/c/a/c;->e:Ljava/lang/String;

    .line 422
    nop

    .line 421
    invoke-virtual {v1, v2, v3}, Lcom/ta/utdid2/c/a/d;->a(Ljava/lang/String;I)Lcom/ta/utdid2/c/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 424
    :catch_1
    move-exception v1

    .line 429
    :cond_7
    :goto_4
    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 433
    invoke-direct {p0}, Lcom/ta/utdid2/c/a/c;->b()Z

    .line 434
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-static {v0}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 437
    return-object v0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b;

    if-eqz v0, :cond_1

    .line 441
    invoke-interface {v0, p1, v1}, Lcom/ta/utdid2/c/a/b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 443
    :cond_1
    return-object v1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 301
    invoke-static {p1}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    invoke-direct {p0}, Lcom/ta/utdid2/c/a/c;->c()V

    .line 303
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 304
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    if-eqz v0, :cond_1

    .line 307
    invoke-interface {v0, p1, p2}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/c/a/b$a;

    .line 310
    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 313
    invoke-static {p1}, Lcom/ta/utdid2/b/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    invoke-direct {p0}, Lcom/ta/utdid2/c/a/c;->c()V

    .line 315
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/ta/utdid2/c/a/c;->a:Lcom/ta/utdid2/c/a/b$a;

    if-eqz v0, :cond_1

    .line 319
    invoke-interface {v0, p1}, Lcom/ta/utdid2/c/a/b$a;->a(Ljava/lang/String;)Lcom/ta/utdid2/c/a/b$a;

    .line 322
    :cond_1
    return-void
.end method
