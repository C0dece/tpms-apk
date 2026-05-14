.class public Lcom/umeng/commonsdk/proguard/al;
.super Ljava/lang/Object;
.source "TProtocolUtil.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const v0, 0x7fffffff

    sput v0, Lcom/umeng/commonsdk/proguard/al;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLcom/umeng/commonsdk/proguard/ak;)Lcom/umeng/commonsdk/proguard/ak;
    .locals 2

    .line 171
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 172
    new-instance p0, Lcom/umeng/commonsdk/proguard/ac$a;

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/ac$a;-><init>()V

    return-object p0

    .line 185
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_1

    .line 186
    new-instance p0, Lcom/umeng/commonsdk/proguard/ac$a;

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/ac$a;-><init>()V

    return-object p0

    .line 194
    :cond_1
    return-object p1
.end method

.method public static a(I)V
    .locals 0

    .line 49
    sput p0, Lcom/umeng/commonsdk/proguard/al;->a:I

    .line 50
    return-void
.end method

.method public static a(Lcom/umeng/commonsdk/proguard/ai;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 60
    sget v0, Lcom/umeng/commonsdk/proguard/al;->a:I

    invoke-static {p0, p1, v0}, Lcom/umeng/commonsdk/proguard/al;->a(Lcom/umeng/commonsdk/proguard/ai;BI)V

    .line 61
    return-void
.end method

.method public static a(Lcom/umeng/commonsdk/proguard/ai;BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/p;
        }
    .end annotation

    .line 73
    if-lez p2, :cond_4

    .line 76
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 136
    :pswitch_1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ai;->p()Lcom/umeng/commonsdk/proguard/ae;

    move-result-object p1

    .line 137
    nop

    :goto_0
    iget v1, p1, Lcom/umeng/commonsdk/proguard/ae;->b:I

    if-ge v0, v1, :cond_0

    .line 138
    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/ae;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/proguard/al;->a(Lcom/umeng/commonsdk/proguard/ai;BI)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ai;->q()V

    .line 141
    goto/16 :goto_4

    .line 128
    :pswitch_2
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ai;->r()Lcom/umeng/commonsdk/proguard/am;

    move-result-object p1

    .line 129
    nop

    :goto_1
    iget v1, p1, Lcom/umeng/commonsdk/proguard/am;->b:I

    if-ge v0, v1, :cond_1

    .line 130
    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/am;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/proguard/al;->a(Lcom/umeng/commonsdk/proguard/ai;BI)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ai;->s()V

    .line 133
    goto :goto_4

    .line 119
    :pswitch_3
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ai;->n()Lcom/umeng/commonsdk/proguard/af;

    move-result-object p1

    .line 120
    nop

    :goto_2
    iget v1, p1, Lcom/umeng/commonsdk/proguard/af;->c:I

    if-ge v0, v1, :cond_2

    .line 121
    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/af;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/proguard/al;->a(Lcom/umeng/commonsdk/proguard/ai;BI)V

    .line 122
    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/af;->b:B

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/proguard/al;->a(Lcom/umeng/commonsdk/proguard/ai;BI)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 124
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ai;->o()V

    .line 125
    goto :goto_4

    .line 106
    :pswitch_4
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ai;->j()Lcom/umeng/commonsdk/proguard/an;

    .line 108
    :goto_3
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ai;->l()Lcom/umeng/commonsdk/proguard/ad;

    move-result-object p1

    .line 109
    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/ad;->b:B

    if-nez v0, :cond_3

    .line 110
    nop

    .line 115
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ai;->k()V

    .line 116
    goto :goto_4

    .line 112
    :cond_3
    iget-byte p1, p1, Lcom/umeng/commonsdk/proguard/ad;->b:B

    add-int/lit8 v0, p2, -0x1

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/umeng/commonsdk/proguard/al;->a(Lcom/umeng/commonsdk/proguard/ai;BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ai;->m()V

    .line 114
    goto :goto_3

    .line 102
    :pswitch_5
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ai;->A()Ljava/nio/ByteBuffer;

    .line 103
    goto :goto_4

    .line 94
    :pswitch_6
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ai;->x()J

    .line 95
    goto :goto_4

    .line 90
    :pswitch_7
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ai;->w()I

    .line 91
    goto :goto_4

    .line 86
    :pswitch_8
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ai;->v()S

    .line 87
    goto :goto_4

    .line 98
    :pswitch_9
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ai;->y()D

    .line 99
    goto :goto_4

    .line 82
    :pswitch_a
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ai;->u()B

    .line 83
    goto :goto_4

    .line 78
    :pswitch_b
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/ai;->t()Z

    .line 79
    nop

    .line 146
    :goto_4
    return-void

    .line 74
    :cond_4
    new-instance p0, Lcom/umeng/commonsdk/proguard/p;

    const-string p1, "Maximum skip depth exceeded"

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/p;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :catchall_0
    move-exception p0

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
