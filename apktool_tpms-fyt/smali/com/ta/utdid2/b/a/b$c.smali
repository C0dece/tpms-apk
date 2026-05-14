.class Lcom/ta/utdid2/b/a/b$c;
.super Lcom/ta/utdid2/b/a/b$a;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final c:[B

.field private static final d:[B


# instance fields
.field b:I

.field public final b:Z

.field public final c:Z

.field private count:I

.field public final d:Z

.field private final e:[B

.field private final f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 562
    const-class v0, Lcom/ta/utdid2/b/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/ta/utdid2/b/a/b$c;->a:Z

    .line 574
    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    .line 575
    nop

    .line 576
    nop

    .line 577
    nop

    .line 578
    nop

    .line 579
    nop

    .line 574
    sput-object v1, Lcom/ta/utdid2/b/a/b$c;->c:[B

    .line 585
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    .line 586
    nop

    .line 587
    nop

    .line 588
    nop

    .line 589
    nop

    .line 590
    nop

    .line 585
    sput-object v0, Lcom/ta/utdid2/b/a/b$c;->d:[B

    .line 590
    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 2

    .line 601
    invoke-direct {p0}, Lcom/ta/utdid2/b/a/b$a;-><init>()V

    .line 602
    iput-object p2, p0, Lcom/ta/utdid2/b/a/b$c;->b:[B

    .line 604
    and-int/lit8 p2, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/ta/utdid2/b/a/b$c;->b:Z

    .line 605
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/ta/utdid2/b/a/b$c;->c:Z

    .line 606
    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    .line 607
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_3

    sget-object p1, Lcom/ta/utdid2/b/a/b$c;->c:[B

    goto :goto_3

    :cond_3
    sget-object p1, Lcom/ta/utdid2/b/a/b$c;->d:[B

    :goto_3
    iput-object p1, p0, Lcom/ta/utdid2/b/a/b$c;->f:[B

    .line 609
    const/4 p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    .line 610
    iput v0, p0, Lcom/ta/utdid2/b/a/b$c;->b:I

    .line 612
    iget-boolean p1, p0, Lcom/ta/utdid2/b/a/b$c;->c:Z

    if-eqz p1, :cond_4

    const/16 p1, 0x13

    goto :goto_4

    :cond_4
    const/4 p1, -0x1

    :goto_4
    iput p1, p0, Lcom/ta/utdid2/b/a/b$c;->count:I

    .line 613
    return-void
.end method


# virtual methods
.method public a([BIIZ)Z
    .locals 17

    .line 625
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ta/utdid2/b/a/b$c;->f:[B

    .line 626
    iget-object v2, v0, Lcom/ta/utdid2/b/a/b$c;->b:[B

    .line 627
    nop

    .line 628
    iget v3, v0, Lcom/ta/utdid2/b/a/b$c;->count:I

    .line 630
    nop

    .line 631
    add-int v4, p3, p2

    .line 632
    nop

    .line 638
    iget v5, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v5, v9, :cond_1

    if-eq v5, v8, :cond_0

    goto :goto_0

    .line 655
    :cond_0
    add-int/lit8 v5, p2, 0x1

    if-gt v5, v4, :cond_2

    .line 657
    iget-object v10, v0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    aget-byte v11, v10, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    aget-byte v10, v10, v9

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v10, v11

    .line 658
    aget-byte v11, p1, p2

    and-int/lit16 v11, v11, 0xff

    .line 657
    or-int/2addr v10, v11

    .line 659
    iput v7, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    move v11, v5

    goto :goto_1

    .line 644
    :cond_1
    add-int/lit8 v5, p2, 0x2

    if-gt v5, v4, :cond_2

    .line 647
    iget-object v5, v0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v10, p2, 0x1

    aget-byte v11, p1, p2

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v5, v11

    .line 648
    add-int/lit8 v11, v10, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    .line 647
    or-int/2addr v10, v5

    .line 649
    iput v7, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    .line 652
    goto :goto_1

    .line 664
    :cond_2
    :goto_0
    move/from16 v11, p2

    const/4 v10, -0x1

    :goto_1
    const/4 v12, 0x4

    const/16 v13, 0xd

    const/16 v14, 0xa

    if-eq v10, v6, :cond_5

    .line 665
    shr-int/lit8 v6, v10, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v1, v6

    aput-byte v6, v2, v7

    .line 666
    shr-int/lit8 v6, v10, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v1, v6

    aput-byte v6, v2, v9

    .line 667
    shr-int/lit8 v6, v10, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v1, v6

    aput-byte v6, v2, v8

    .line 668
    and-int/lit8 v6, v10, 0x3f

    aget-byte v6, v1, v6

    const/4 v10, 0x3

    aput-byte v6, v2, v10

    .line 669
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_4

    .line 670
    iget-boolean v3, v0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    if-eqz v3, :cond_3

    .line 671
    const/4 v3, 0x5

    aput-byte v13, v2, v12

    goto :goto_2

    .line 670
    :cond_3
    const/4 v3, 0x4

    .line 672
    :goto_2
    add-int/lit8 v6, v3, 0x1

    aput-byte v14, v2, v3

    .line 673
    nop

    .line 682
    const/16 v3, 0x13

    goto :goto_3

    .line 669
    :cond_4
    const/4 v6, 0x4

    goto :goto_3

    .line 664
    :cond_5
    const/4 v6, 0x0

    .line 682
    :goto_3
    add-int/lit8 v10, v11, 0x3

    if-le v10, v4, :cond_19

    .line 699
    if-eqz p4, :cond_15

    .line 705
    iget v10, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    sub-int v15, v11, v10

    add-int/lit8 v5, v4, -0x1

    const/16 v16, 0x3d

    if-ne v15, v5, :cond_9

    .line 706
    nop

    .line 707
    if-lez v10, :cond_6

    iget-object v5, v0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    aget-byte v5, v5, v7

    const/4 v7, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v11, 0x1

    aget-byte v8, p1, v11

    move v11, v5

    move v5, v8

    :goto_4
    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v12

    .line 708
    iget v8, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    sub-int/2addr v8, v7

    iput v8, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    .line 709
    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v1, v8

    aput-byte v8, v2, v6

    .line 710
    add-int/lit8 v6, v7, 0x1

    and-int/lit8 v5, v5, 0x3f

    aget-byte v1, v1, v5

    aput-byte v1, v2, v7

    .line 711
    iget-boolean v1, v0, Lcom/ta/utdid2/b/a/b$c;->b:Z

    if-eqz v1, :cond_7

    .line 712
    add-int/lit8 v1, v6, 0x1

    aput-byte v16, v2, v6

    .line 713
    add-int/lit8 v6, v1, 0x1

    aput-byte v16, v2, v1

    .line 715
    :cond_7
    iget-boolean v1, v0, Lcom/ta/utdid2/b/a/b$c;->c:Z

    if-eqz v1, :cond_11

    .line 716
    iget-boolean v1, v0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    if-eqz v1, :cond_8

    .line 717
    add-int/lit8 v1, v6, 0x1

    aput-byte v13, v2, v6

    move v6, v1

    .line 718
    :cond_8
    add-int/lit8 v1, v6, 0x1

    aput-byte v14, v2, v6

    .line 720
    move v6, v1

    goto/16 :goto_7

    :cond_9
    sub-int v5, v11, v10

    add-int/lit8 v12, v4, -0x2

    if-ne v5, v12, :cond_f

    .line 721
    nop

    .line 722
    if-le v10, v9, :cond_a

    iget-object v5, v0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    aget-byte v5, v5, v7

    const/4 v7, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v5, v11, 0x1

    aget-byte v10, p1, v11

    move v11, v5

    move v5, v10

    :goto_5
    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v14

    .line 723
    iget v10, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    if-lez v10, :cond_b

    iget-object v10, v0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    add-int/lit8 v12, v7, 0x1

    aget-byte v7, v10, v7

    goto :goto_6

    :cond_b
    add-int/lit8 v10, v11, 0x1

    aget-byte v11, p1, v11

    move v12, v7

    move v7, v11

    move v11, v10

    :goto_6
    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v8

    .line 722
    or-int/2addr v5, v7

    .line 724
    iget v7, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    sub-int/2addr v7, v12

    iput v7, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    .line 725
    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v1, v8

    aput-byte v8, v2, v6

    .line 726
    add-int/lit8 v6, v7, 0x1

    shr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-byte v8, v1, v8

    aput-byte v8, v2, v7

    .line 727
    add-int/lit8 v7, v6, 0x1

    and-int/lit8 v5, v5, 0x3f

    aget-byte v1, v1, v5

    aput-byte v1, v2, v6

    .line 728
    iget-boolean v1, v0, Lcom/ta/utdid2/b/a/b$c;->b:Z

    if-eqz v1, :cond_c

    .line 729
    add-int/lit8 v1, v7, 0x1

    aput-byte v16, v2, v7

    move v7, v1

    .line 731
    :cond_c
    iget-boolean v1, v0, Lcom/ta/utdid2/b/a/b$c;->c:Z

    if-eqz v1, :cond_e

    .line 732
    iget-boolean v1, v0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    if-eqz v1, :cond_d

    .line 733
    add-int/lit8 v1, v7, 0x1

    aput-byte v13, v2, v7

    move v7, v1

    .line 734
    :cond_d
    add-int/lit8 v1, v7, 0x1

    aput-byte v14, v2, v7

    .line 736
    move v6, v1

    goto :goto_7

    .line 731
    :cond_e
    move v6, v7

    goto :goto_7

    .line 736
    :cond_f
    iget-boolean v1, v0, Lcom/ta/utdid2/b/a/b$c;->c:Z

    if-eqz v1, :cond_11

    if-lez v6, :cond_11

    const/16 v5, 0x13

    if-eq v3, v5, :cond_11

    .line 737
    iget-boolean v1, v0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    if-eqz v1, :cond_10

    .line 738
    add-int/lit8 v1, v6, 0x1

    aput-byte v13, v2, v6

    move v6, v1

    .line 739
    :cond_10
    add-int/lit8 v1, v6, 0x1

    aput-byte v14, v2, v6

    move v6, v1

    .line 742
    :cond_11
    :goto_7
    sget-boolean v1, Lcom/ta/utdid2/b/a/b$c;->a:Z

    if-nez v1, :cond_13

    iget v1, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    if-nez v1, :cond_12

    goto :goto_8

    :cond_12
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 743
    :cond_13
    :goto_8
    sget-boolean v1, Lcom/ta/utdid2/b/a/b$c;->a:Z

    if-nez v1, :cond_18

    if-ne v11, v4, :cond_14

    goto :goto_a

    :cond_14
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 748
    :cond_15
    add-int/lit8 v1, v4, -0x1

    if-ne v11, v1, :cond_16

    .line 749
    iget-object v1, v0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    iget v2, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    aget-byte v4, p1, v11

    aput-byte v4, v1, v2

    goto :goto_9

    .line 750
    :cond_16
    sub-int/2addr v4, v8

    if-ne v11, v4, :cond_17

    .line 751
    iget-object v1, v0, Lcom/ta/utdid2/b/a/b$c;->e:[B

    iget v2, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    aget-byte v5, p1, v11

    aput-byte v5, v1, v2

    .line 752
    add-int/lit8 v2, v4, 0x1

    iput v2, v0, Lcom/ta/utdid2/b/a/b$c;->b:I

    add-int/2addr v11, v9

    aget-byte v2, p1, v11

    aput-byte v2, v1, v4

    goto :goto_a

    .line 750
    :cond_17
    :goto_9
    nop

    .line 756
    :cond_18
    :goto_a
    iput v6, v0, Lcom/ta/utdid2/b/a/b$c;->a:I

    .line 757
    iput v3, v0, Lcom/ta/utdid2/b/a/b$c;->count:I

    .line 759
    return v9

    .line 683
    :cond_19
    const/16 v5, 0x13

    aget-byte v15, p1, v11

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    add-int/lit8 v16, v11, 0x1

    aget-byte v5, p1, v16

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v15

    .line 684
    add-int/lit8 v11, v11, 0x2

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    .line 683
    or-int/2addr v5, v11

    .line 685
    shr-int/lit8 v11, v5, 0x12

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v2, v6

    .line 686
    add-int/lit8 v11, v6, 0x1

    shr-int/lit8 v15, v5, 0xc

    and-int/lit8 v15, v15, 0x3f

    aget-byte v15, v1, v15

    aput-byte v15, v2, v11

    .line 687
    add-int/lit8 v11, v6, 0x2

    shr-int/lit8 v15, v5, 0x6

    and-int/lit8 v15, v15, 0x3f

    aget-byte v15, v1, v15

    aput-byte v15, v2, v11

    .line 688
    add-int/lit8 v11, v6, 0x3

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v1, v5

    aput-byte v5, v2, v11

    .line 689
    nop

    .line 690
    add-int/lit8 v6, v6, 0x4

    .line 691
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_1b

    .line 692
    iget-boolean v3, v0, Lcom/ta/utdid2/b/a/b$c;->d:Z

    if-eqz v3, :cond_1a

    .line 693
    add-int/lit8 v3, v6, 0x1

    aput-byte v13, v2, v6

    move v6, v3

    .line 694
    :cond_1a
    add-int/lit8 v3, v6, 0x1

    aput-byte v14, v2, v6

    .line 695
    move v6, v3

    move v11, v10

    const/16 v3, 0x13

    goto/16 :goto_3

    .line 691
    :cond_1b
    move v11, v10

    goto/16 :goto_3
.end method
