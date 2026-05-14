.class public Lcom/umeng/commonsdk/statistics/noise/ABTest;
.super Ljava/lang/Object;
.source "ABTest.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/d;


# static fields
.field private static instance:Lcom/umeng/commonsdk/statistics/noise/ABTest;


# instance fields
.field private context:Landroid/content/Context;

.field private isInTest:Z

.field private mGroup:I

.field private mInterval:I

.field private mPoli:Ljava/lang/String;

.field private mPolicy:I

.field private mProb07:F

.field private mProb13:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->instance:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    .line 21
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mInterval:I

    .line 22
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    .line 24
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb07:F

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->context:Landroid/content/Context;

    .line 45
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->context:Landroid/content/Context;

    .line 46
    invoke-virtual {p0, p2, p3}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->onExperimentChanged(Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public static declared-synchronized getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;
    .locals 4

    const-class v0, Lcom/umeng/commonsdk/statistics/noise/ABTest;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/statistics/noise/ABTest;->instance:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    if-nez v1, :cond_0

    .line 36
    const-string v1, "client_test"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    const-string v2, "test_report_interval"

    const-string v3, "0"

    invoke-static {p0, v2, v3}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 38
    new-instance v3, Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-direct {v3, p0, v1, v2}, Lcom/umeng/commonsdk/statistics/noise/ABTest;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v3, Lcom/umeng/commonsdk/statistics/noise/ABTest;->instance:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    .line 41
    :cond_0
    sget-object p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->instance:Lcom/umeng/commonsdk/statistics/noise/ABTest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private parseFIXED(Ljava/lang/String;)V
    .locals 10

    .line 180
    if-nez p1, :cond_0

    .line 181
    return-void

    .line 182
    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 184
    const/4 v0, 0x0

    .line 185
    const/4 v1, 0x2

    aget-object v1, p1, v1

    const-string v2, "SIG13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 188
    :cond_1
    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    const/4 v2, 0x0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 189
    iput-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 190
    return-void

    .line 193
    :cond_2
    nop

    .line 194
    aget-object v0, p1, v2

    const-string v1, "FIXED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 195
    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 194
    :cond_3
    const/4 v0, -0x1

    .line 198
    :goto_0
    const/4 v4, 0x0

    .line 199
    const/4 v5, 0x4

    aget-object v6, p1, v5

    const-string v7, "RPT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v8, ","

    const/4 v9, 0x5

    if-eqz v6, :cond_4

    .line 200
    iput-object v7, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    .line 201
    aget-object p1, p1, v9

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 202
    array-length v4, p1

    new-array v4, v4, [I

    .line 203
    const/4 v5, 0x0

    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_6

    .line 204
    aget-object v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    .line 203
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 206
    :cond_4
    aget-object v5, p1, v5

    const-string v6, "DOM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 207
    iput-object v6, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    .line 208
    iput-boolean v3, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 210
    :try_start_0
    aget-object p1, p1, v9

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 211
    array-length v5, p1

    new-array v4, v5, [I

    .line 212
    const/4 v5, 0x0

    :goto_2
    array-length v6, p1

    if-ge v5, v6, :cond_5

    .line 213
    aget-object v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 216
    :cond_5
    goto :goto_3

    .line 215
    :catch_0
    move-exception p1

    goto :goto_3

    .line 206
    :cond_6
    nop

    .line 219
    :goto_3
    if-eq v0, v1, :cond_7

    .line 220
    iput-boolean v3, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 221
    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    .line 222
    if-eqz v4, :cond_8

    .line 223
    sub-int/2addr v0, v3

    aget p1, v4, v0

    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    goto :goto_4

    .line 226
    :cond_7
    iput-boolean v2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 228
    :cond_8
    :goto_4
    return-void
.end method

.method private parseSig7(Ljava/lang/String;)V
    .locals 10

    .line 112
    if-nez p1, :cond_0

    .line 113
    return-void

    .line 114
    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 116
    nop

    .line 117
    const/4 v0, 0x2

    aget-object v0, p1, v0

    const-string v1, "SIG13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 118
    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 117
    :cond_1
    const/4 v0, 0x0

    .line 120
    :goto_0
    iget v2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    const/4 v3, 0x0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_2

    .line 121
    iput-boolean v3, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 122
    return-void

    .line 125
    :cond_2
    nop

    .line 126
    aget-object v0, p1, v3

    const-string v2, "SIG7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v4, ","

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 127
    aget-object v0, p1, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 128
    array-length v6, v0

    new-array v6, v6, [F

    .line 129
    const/4 v7, 0x0

    :goto_1
    array-length v8, v0

    if-ge v7, v8, :cond_4

    .line 130
    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v6, v7

    .line 129
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 126
    :cond_3
    move-object v6, v2

    .line 134
    :cond_4
    nop

    .line 135
    const/4 v0, 0x4

    aget-object v7, p1, v0

    const-string v8, "RPT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x5

    if-eqz v7, :cond_5

    .line 136
    iput-object v8, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    .line 137
    aget-object p1, p1, v9

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 138
    array-length v0, p1

    new-array v2, v0, [I

    .line 139
    const/4 v0, 0x0

    :goto_2
    array-length v4, p1

    if-ge v0, v4, :cond_7

    .line 140
    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 142
    :cond_5
    aget-object v0, p1, v0

    const-string v7, "DOM"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 143
    iput-boolean v5, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 144
    iput-object v7, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    .line 146
    :try_start_0
    aget-object p1, p1, v9

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 147
    array-length v0, p1

    new-array v2, v0, [I

    .line 148
    const/4 v0, 0x0

    :goto_3
    array-length v4, p1

    if-ge v0, v4, :cond_6

    .line 149
    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 152
    :cond_6
    goto :goto_4

    .line 151
    :catch_0
    move-exception p1

    goto :goto_4

    .line 142
    :cond_7
    nop

    .line 155
    :goto_4
    nop

    .line 156
    nop

    .line 157
    const/4 p1, 0x0

    :goto_5
    array-length v0, v6

    const/4 v4, -0x1

    if-ge p1, v0, :cond_9

    .line 158
    aget v0, v6, p1

    add-float/2addr v1, v0

    .line 159
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb07:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 160
    nop

    .line 161
    goto :goto_6

    .line 157
    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_9
    const/4 p1, -0x1

    .line 165
    :goto_6
    if-eq p1, v4, :cond_a

    .line 166
    iput-boolean v5, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 167
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    .line 168
    if-eqz v2, :cond_b

    .line 169
    aget p1, v2, p1

    iput p1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    goto :goto_7

    .line 172
    :cond_a
    iput-boolean v3, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 175
    :cond_b
    :goto_7
    return-void
.end method

.method private prob(Ljava/lang/String;I)F
    .locals 1

    .line 50
    mul-int/lit8 p2, p2, 0x2

    .line 51
    if-nez p1, :cond_0

    .line 52
    const/4 p1, 0x0

    return p1

    .line 53
    :cond_0
    add-int/lit8 v0, p2, 0x5

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    invoke-static {p1, p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    .line 54
    const/high16 p2, 0x49800000    # 1048576.0f

    .line 56
    div-float/2addr p1, p2

    return p1
.end method

.method public static validate(Ljava/lang/String;)Z
    .locals 6

    .line 82
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 83
    return v1

    .line 86
    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 87
    array-length v0, p0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    .line 88
    return v1

    .line 91
    :cond_1
    aget-object v0, p0, v1

    const-string v2, "SIG7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x5

    const-string v3, ","

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 92
    aget-object v0, p0, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 93
    aget-object v5, p0, v2

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    .line 94
    if-ne v0, v5, :cond_2

    .line 95
    return v4

    .line 99
    :cond_2
    aget-object v0, p0, v1

    const-string v5, "FIXED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    aget-object v0, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 101
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 102
    if-lt v0, p0, :cond_3

    if-lt p0, v4, :cond_3

    .line 103
    return v4

    .line 107
    :cond_3
    return v1
.end method


# virtual methods
.method public getGroup()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    return v0
.end method

.method public getGroupInfo()Ljava/lang/String;
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    if-nez v0, :cond_0

    .line 248
    const-string v0, "error"

    return-object v0

    .line 249
    :cond_0
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mGroup:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTestInterval()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mInterval:I

    return v0
.end method

.method public getTestName()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPoli:Ljava/lang/String;

    return-object v0
.end method

.method public getTestPolicy()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    return v0
.end method

.method public isInTest()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    return v0
.end method

.method public onExperimentChanged(Ljava/lang/String;I)V
    .locals 2

    .line 61
    iput p2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mInterval:I

    .line 62
    iget-object p2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/idtracking/Envelope;->getSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 63
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 68
    :cond_0
    const/16 v0, 0xc

    :try_start_0
    invoke-direct {p0, p2, v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->prob(Ljava/lang/String;I)F

    move-result v0

    iput v0, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    .line 69
    const/4 v0, 0x6

    invoke-direct {p0, p2, v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->prob(Ljava/lang/String;I)F

    move-result p2

    iput p2, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb07:F

    .line 70
    const-string p2, "SIG7"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 71
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->parseSig7(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_1
    const-string p2, "FIXED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 73
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->parseFIXED(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_2
    :goto_0
    goto :goto_1

    .line 75
    :catch_0
    move-exception p2

    .line 76
    iput-boolean v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    :goto_1
    return-void

    .line 64
    :cond_3
    :goto_2
    iput-boolean v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest:Z

    .line 65
    return-void
.end method

.method public onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V
    .locals 3

    .line 258
    const-string v0, "client_test"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    const-string v1, "test_report_interval"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 260
    invoke-virtual {p0, v0, p1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->onExperimentChanged(Ljava/lang/String;I)V

    .line 261
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    const-string v1, " p13:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb13:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, " p07:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mProb07:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, " policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, " interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget v1, p0, Lcom/umeng/commonsdk/statistics/noise/ABTest;->mInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
