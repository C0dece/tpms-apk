.class public Lcom/umeng/commonsdk/internal/utils/d;
.super Ljava/lang/Object;
.source "CpuUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/internal/utils/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a()Lcom/umeng/commonsdk/internal/utils/d$a;
    .locals 12

    .line 37
    nop

    .line 38
    nop

    .line 39
    nop

    .line 40
    nop

    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/umeng/commonsdk/internal/utils/d$a;

    invoke-direct {v2}, Lcom/umeng/commonsdk/internal/utils/d$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 43
    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 44
    nop

    .line 47
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    nop

    .line 51
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    nop

    .line 54
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 55
    :goto_0
    :try_start_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 56
    add-int/2addr v6, v5

    .line 57
    const/16 v9, 0x1e

    if-lt v6, v9, :cond_0

    .line 58
    goto/16 :goto_1

    .line 60
    :cond_0
    const-string v9, ":\\s+"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 62
    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    array-length v9, v0

    if-le v9, v5, :cond_1

    .line 63
    aget-object v7, v0, v5

    iput-object v7, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->a:Ljava/lang/String;

    .line 64
    const/4 v7, 0x0

    .line 66
    :cond_1
    if-eqz v0, :cond_2

    array-length v9, v0

    if-le v9, v5, :cond_2

    aget-object v9, v0, v1

    const-string v10, "processor"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 67
    add-int/lit8 v8, v8, 0x1

    .line 69
    :cond_2
    if-eqz v0, :cond_3

    array-length v9, v0

    if-le v9, v5, :cond_3

    aget-object v9, v0, v1

    const-string v10, "Features"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 70
    aget-object v9, v0, v5

    iput-object v9, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->d:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    :cond_3
    const-string v9, "implementer"

    if-eqz v0, :cond_4

    :try_start_5
    array-length v10, v0

    if-le v10, v5, :cond_4

    aget-object v10, v0, v1

    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 73
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->e:Ljava/lang/String;

    .line 76
    :cond_4
    if-eqz v0, :cond_5

    array-length v10, v0

    if-le v10, v5, :cond_5

    aget-object v10, v0, v1

    const-string v11, "architecture"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 77
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->f:Ljava/lang/String;

    .line 79
    :cond_5
    if-eqz v0, :cond_6

    array-length v10, v0

    if-le v10, v5, :cond_6

    aget-object v10, v0, v1

    const-string v11, "variant"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 80
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->g:Ljava/lang/String;

    .line 82
    :cond_6
    if-eqz v0, :cond_7

    array-length v10, v0

    if-le v10, v5, :cond_7

    aget-object v10, v0, v1

    const-string v11, "part"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 83
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->h:Ljava/lang/String;

    .line 85
    :cond_7
    if-eqz v0, :cond_8

    array-length v10, v0

    if-le v10, v5, :cond_8

    aget-object v10, v0, v1

    const-string v11, "revision"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 86
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->i:Ljava/lang/String;

    .line 88
    :cond_8
    if-eqz v0, :cond_9

    array-length v10, v0

    if-le v10, v5, :cond_9

    aget-object v10, v0, v1

    const-string v11, "Hardware"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 89
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->j:Ljava/lang/String;

    .line 91
    :cond_9
    if-eqz v0, :cond_a

    array-length v10, v0

    if-le v10, v5, :cond_a

    aget-object v10, v0, v1

    const-string v11, "Revision"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 92
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->k:Ljava/lang/String;

    .line 94
    :cond_a
    if-eqz v0, :cond_b

    array-length v10, v0

    if-le v10, v5, :cond_b

    aget-object v10, v0, v1

    const-string v11, "Serial"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 95
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->l:Ljava/lang/String;

    .line 97
    :cond_b
    if-eqz v0, :cond_c

    array-length v10, v0

    if-le v10, v5, :cond_c

    aget-object v10, v0, v1

    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 98
    aget-object v0, v0, v5

    iput-object v0, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->e:Ljava/lang/String;

    .line 100
    :cond_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 101
    goto/16 :goto_0

    .line 104
    :cond_d
    :goto_1
    nop

    .line 106
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 109
    goto :goto_2

    .line 107
    :catch_0
    move-exception v0

    .line 111
    :goto_2
    nop

    .line 113
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 116
    :goto_3
    goto :goto_d

    .line 114
    :catch_1
    move-exception v0

    goto :goto_3

    .line 102
    :catch_2
    move-exception v0

    move-object v0, v3

    move v1, v8

    goto :goto_9

    .line 104
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 102
    :catch_3
    move-exception v0

    goto :goto_4

    .line 104
    :catchall_1
    move-exception v1

    move-object v4, v0

    goto :goto_5

    .line 102
    :catch_4
    move-exception v4

    move-object v4, v0

    :goto_4
    move-object v0, v3

    goto :goto_9

    :catch_5
    move-exception v3

    move-object v4, v0

    goto :goto_9

    .line 104
    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v4, v3

    :goto_5
    move-object v0, v1

    :goto_6
    if-eqz v3, :cond_e

    .line 106
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 109
    goto :goto_7

    .line 107
    :catch_6
    move-exception v1

    .line 111
    :cond_e
    :goto_7
    if-eqz v4, :cond_f

    .line 113
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 116
    goto :goto_8

    .line 114
    :catch_7
    move-exception v1

    .line 116
    :cond_f
    :goto_8
    throw v0

    .line 102
    :catch_8
    move-exception v2

    move-object v2, v0

    move-object v4, v2

    .line 104
    :goto_9
    if-eqz v0, :cond_10

    .line 106
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 109
    goto :goto_a

    .line 107
    :catch_9
    move-exception v0

    .line 111
    :cond_10
    :goto_a
    if-eqz v4, :cond_11

    .line 113
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 116
    :goto_b
    goto :goto_c

    .line 114
    :catch_a
    move-exception v0

    goto :goto_b

    .line 120
    :cond_11
    :goto_c
    move v8, v1

    :goto_d
    iput v8, v2, Lcom/umeng/commonsdk/internal/utils/d$a;->c:I

    .line 121
    return-object v2
.end method

.method public static b()Ljava/lang/String;
    .locals 5

    .line 128
    const-string v0, ""

    .line 131
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/cat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    aput-object v3, v1, v2

    .line 133
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 134
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 136
    const/16 v2, 0x18

    new-array v2, v2, [B

    .line 137
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_1

    .line 141
    :catch_0
    move-exception v1

    .line 144
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 5

    .line 149
    const-string v0, ""

    .line 152
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/cat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    aput-object v3, v1, v2

    .line 154
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 155
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 157
    const/16 v2, 0x18

    new-array v2, v2, [B

    .line 158
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_1

    .line 162
    :catch_0
    move-exception v1

    .line 165
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .line 170
    nop

    .line 171
    nop

    .line 173
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 176
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    nop

    .line 183
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    goto :goto_6

    .line 185
    :catchall_0
    move-exception v1

    .line 188
    goto :goto_6

    .line 181
    :catchall_1
    move-exception v0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_3

    .line 181
    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 182
    :goto_0
    if-eqz v2, :cond_0

    .line 183
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    .line 185
    :catchall_3
    move-exception v1

    goto :goto_2

    .line 187
    :cond_0
    :goto_1
    nop

    :goto_2
    throw v0

    .line 178
    :catch_1
    move-exception v1

    .line 182
    :goto_3
    if-eqz v0, :cond_1

    .line 183
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    .line 185
    :catchall_4
    move-exception v0

    .line 188
    goto :goto_5

    .line 187
    :cond_1
    :goto_4
    nop

    .line 189
    :goto_5
    const-string v0, ""

    :goto_6
    return-object v0
.end method
