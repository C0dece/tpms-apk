.class public Lcom/umeng/analytics/pro/o;
.super Ljava/lang/Object;
.source "EventTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/o$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "fs_lc_tl_uapp"

.field private static final f:Ljava/lang/String; = "-1"

.field private static g:Landroid/content/Context;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private h:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x80

    iput v0, p0, Lcom/umeng/analytics/pro/o;->b:I

    .line 45
    const/16 v0, 0x100

    iput v0, p0, Lcom/umeng/analytics/pro/o;->c:I

    .line 46
    const/16 v0, 0x400

    iput v0, p0, Lcom/umeng/analytics/pro/o;->d:I

    .line 47
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/analytics/pro/o;->e:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    .line 55
    if-nez v0, :cond_0

    .line 56
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/o;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 59
    :cond_0
    :goto_0
    nop

    .line 60
    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/o$1;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/o;
    .locals 1

    .line 67
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 68
    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    .line 73
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/o$a;->a()Lcom/umeng/analytics/pro/o;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 618
    nop

    .line 619
    nop

    .line 620
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 623
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 624
    nop

    .line 625
    nop

    .line 626
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_15

    .line 628
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 629
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 630
    if-eqz v2, :cond_14

    .line 632
    const/16 v3, 0x80

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 634
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 635
    if-eqz v1, :cond_13

    .line 637
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    .line 638
    instance-of v3, v1, [I

    if-eqz v3, :cond_1

    .line 639
    check-cast v1, [I

    check-cast v1, [I

    .line 640
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 641
    nop

    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 642
    aget v5, v1, v4

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 641
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 644
    :cond_0
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 645
    goto/16 :goto_9

    :cond_1
    instance-of v3, v1, [D

    if-eqz v3, :cond_3

    .line 646
    check-cast v1, [D

    check-cast v1, [D

    .line 647
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 648
    nop

    :goto_2
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 649
    aget-wide v5, v1, v4

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 648
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 651
    :cond_2
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 652
    goto/16 :goto_9

    :cond_3
    instance-of v3, v1, [J

    if-eqz v3, :cond_5

    .line 653
    check-cast v1, [J

    check-cast v1, [J

    .line 654
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 655
    nop

    :goto_3
    array-length v5, v1

    if-ge v4, v5, :cond_4

    .line 656
    aget-wide v5, v1, v4

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 655
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 658
    :cond_4
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 659
    goto/16 :goto_9

    :cond_5
    instance-of v3, v1, [F

    if-eqz v3, :cond_7

    .line 660
    check-cast v1, [F

    check-cast v1, [F

    .line 661
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 662
    nop

    :goto_4
    array-length v5, v1

    if-ge v4, v5, :cond_6

    .line 663
    aget v5, v1, v4

    float-to-double v5, v5

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 662
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 665
    :cond_6
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    .line 666
    :cond_7
    instance-of v3, v1, [S

    if-eqz v3, :cond_9

    .line 667
    check-cast v1, [S

    check-cast v1, [S

    .line 668
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 669
    nop

    :goto_5
    array-length v5, v1

    if-ge v4, v5, :cond_8

    .line 670
    aget-short v5, v1, v4

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 669
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 672
    :cond_8
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 674
    goto/16 :goto_9

    .line 666
    :cond_9
    :goto_6
    goto/16 :goto_9

    .line 679
    :cond_a
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_f

    .line 680
    check-cast v1, Ljava/util/List;

    .line 681
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 682
    nop

    .line 683
    nop

    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    .line 684
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 685
    instance-of v6, v5, Ljava/lang/String;

    if-nez v6, :cond_b

    instance-of v6, v5, Ljava/lang/Long;

    if-nez v6, :cond_b

    instance-of v6, v5, Ljava/lang/Integer;

    if-nez v6, :cond_b

    instance-of v6, v5, Ljava/lang/Float;

    if-nez v6, :cond_b

    instance-of v6, v5, Ljava/lang/Double;

    if-nez v6, :cond_b

    instance-of v5, v5, Ljava/lang/Short;

    if-eqz v5, :cond_c

    .line 692
    :cond_b
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 683
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 695
    :cond_d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_e

    .line 696
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 698
    :cond_e
    goto :goto_9

    :cond_f
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_10

    .line 699
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x100

    invoke-static {v1, v3}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 701
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_9

    .line 702
    :cond_10
    instance-of v3, v1, Ljava/lang/Long;

    if-nez v3, :cond_12

    instance-of v3, v1, Ljava/lang/Integer;

    if-nez v3, :cond_12

    instance-of v3, v1, Ljava/lang/Float;

    if-nez v3, :cond_12

    instance-of v3, v1, Ljava/lang/Double;

    if-nez v3, :cond_12

    instance-of v3, v1, Ljava/lang/Short;

    if-eqz v3, :cond_11

    goto :goto_8

    .line 733
    :cond_11
    const-string v1, "The param has not support type. please check !"

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    goto :goto_9

    .line 708
    :cond_12
    :goto_8
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 737
    :cond_13
    :goto_9
    nop

    .line 738
    nop

    .line 739
    nop

    .line 740
    goto :goto_a

    .line 742
    :catch_0
    move-exception v1

    .line 743
    :try_start_2
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 744
    :cond_14
    :goto_a
    goto/16 :goto_0

    .line 750
    :cond_15
    goto :goto_b

    .line 746
    :catch_1
    move-exception p1

    .line 751
    :goto_b
    return-object v0
.end method

.method private a()V
    .locals 6

    .line 459
    :try_start_0
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    const-string v1, "track_list"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 461
    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 462
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 464
    iget-object v2, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 466
    const/4 v2, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 467
    aget-object v4, v0, v2

    const/16 v5, 0x80

    invoke-static {v4, v5}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 468
    iget-object v5, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 469
    iget-object v5, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 466
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 475
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    .line 476
    array-length v2, v0

    const/16 v4, 0xa

    if-lt v2, v4, :cond_2

    .line 477
    nop

    :goto_1
    if-ge v3, v4, :cond_3

    .line 478
    aget-object v2, v0, v3

    invoke-direct {p0, v2, v1}, Lcom/umeng/analytics/pro/o;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 477
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 481
    :cond_2
    nop

    :goto_2
    array-length v2, v0

    if-ge v3, v2, :cond_3

    .line 482
    aget-object v2, v0, v3

    invoke-direct {p0, v2, v1}, Lcom/umeng/analytics/pro/o;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 481
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 486
    :cond_3
    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/o;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :cond_4
    goto :goto_3

    .line 490
    :catch_0
    move-exception v0

    .line 495
    :goto_3
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 500
    const/16 v0, 0x80

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 501
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/pro/o;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 504
    :cond_0
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/pro/o;->a(Ljava/lang/String;Z)V

    .line 506
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    .line 510
    :try_start_0
    const-string v0, "$st_fl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "du"

    .line 511
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "id"

    .line 512
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ts"

    .line 513
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :cond_0
    goto :goto_0

    .line 518
    :catch_0
    move-exception p1

    .line 523
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .line 756
    if-eqz p1, :cond_0

    .line 757
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    if-lez v0, :cond_0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_0

    .line 760
    const/4 p1, 0x1

    return p1

    .line 765
    :catch_0
    move-exception v0

    goto :goto_0

    .line 769
    :cond_0
    nop

    .line 771
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", please check key, illegal"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 772
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 441
    :try_start_0
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 442
    const-string v0, "fs_lc_tl_uapp"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 443
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    .line 449
    :cond_0
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    goto :goto_0

    .line 450
    :catch_0
    move-exception p1

    .line 452
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .line 777
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 778
    return v0

    .line 779
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x100

    if-gt v1, v2, :cond_1

    .line 780
    return v0

    .line 787
    :cond_1
    goto :goto_0

    .line 783
    :catch_0
    move-exception v0

    .line 788
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", please check value, illegal"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 789
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 812
    const-string v0, "\\|"

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 818
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 819
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/umeng/analytics/pro/o;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 821
    sget-object p1, Lcom/umeng/analytics/pro/h;->h:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 822
    return v1

    .line 825
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 827
    sget-object p1, Lcom/umeng/analytics/pro/h;->i:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 828
    return v1

    .line 831
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 833
    const-string v3, "_$!link"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 834
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/umeng/analytics/pro/o;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 835
    const-string p1, "MobclickAgent.onDeepLinkReceived\u65b9\u6cd5link\u53c2\u6570\u957f\u5ea6\u8d85\u8fc7\u9650\u5236\u3002|\u53c2\u6570link\u957f\u5ea6\u4e0d\u80fd\u8d85\u8fc71024\u5b57\u7b26\u3002"

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 836
    return v1

    .line 839
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/umeng/analytics/pro/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 840
    sget-object p1, Lcom/umeng/analytics/pro/h;->j:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 841
    return v1

    .line 849
    :cond_4
    goto :goto_0

    .line 854
    :cond_5
    goto :goto_2

    .line 814
    :cond_6
    :goto_1
    sget-object p1, Lcom/umeng/analytics/pro/h;->g:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    return v1

    .line 850
    :catch_0
    move-exception p1

    .line 855
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .line 532
    :try_start_0
    iget-object p1, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 533
    sget-object p1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 534
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "fs_lc_tl_uapp"

    iget-object v1, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    :cond_0
    goto :goto_0

    .line 536
    :catchall_0
    move-exception p1

    .line 538
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    .line 794
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 796
    return v0

    .line 797
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x400

    if-gt p1, v1, :cond_1

    .line 799
    return v0

    .line 806
    :cond_1
    goto :goto_0

    .line 802
    :catch_0
    move-exception p1

    .line 807
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 6

    .line 79
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->a(Ljava/lang/String;)Z

    move-result p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "\\|"

    const/4 v1, 0x0

    if-eqz p5, :cond_9

    :try_start_1
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/o;->b(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_0

    goto/16 :goto_2

    .line 83
    :cond_0
    sget-object p5, Lcom/umeng/analytics/pro/b;->aD:[Ljava/lang/String;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "key is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", please check key, illegal"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 85
    sget-object p1, Lcom/umeng/analytics/pro/h;->m:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    return-void

    .line 88
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 89
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    .line 90
    const-string v0, "id"

    invoke-virtual {p5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v0, "ts"

    invoke-virtual {p5, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 92
    const-wide/16 v4, 0x0

    cmp-long v0, p3, v4

    if-lez v0, :cond_2

    .line 93
    const-string v0, "du"

    invoke-virtual {p5, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 95
    :cond_2
    const-string p3, "__t"

    const/16 p4, 0x801

    invoke-virtual {p5, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    if-nez p2, :cond_3

    const-string p2, ""

    :cond_3
    invoke-virtual {p5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    nop

    .line 99
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->isMainProcess(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 102
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/umeng/analytics/pro/u;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 104
    :cond_4
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3, v2, v3}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    .line 107
    :goto_0
    const-string p3, "__i"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_5

    const-string p2, "-1"

    :cond_5
    invoke-virtual {p5, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_7

    .line 112
    :try_start_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_6

    .line 114
    const-string p3, "_$sp"

    invoke-virtual {p5, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :cond_6
    goto :goto_1

    .line 116
    :catch_0
    move-exception p2

    .line 121
    :cond_7
    :goto_1
    :try_start_3
    const-string p2, "ds"

    invoke-virtual {p5, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    const-string p2, "pn"

    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object p3

    sget-object p4, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-virtual {p3, p4}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->a()V

    .line 128
    iget-object p2, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    if-eqz p2, :cond_8

    .line 129
    iget-object p2, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 130
    iget-object p2, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 135
    if-nez p2, :cond_8

    .line 136
    const-string p2, "$st_fl"

    const/4 p3, 0x1

    invoke-virtual {p5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    iget-object p2, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 138
    sget-object p1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->c(Landroid/content/Context;)V

    .line 143
    :cond_8
    sget-object p1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    const/16 p2, 0x1001

    sget-object p3, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    .line 144
    invoke-static {p3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p3

    .line 143
    invoke-static {p1, p2, p3, p5}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 146
    goto :goto_3

    .line 80
    :cond_9
    :goto_2
    sget-object p1, Lcom/umeng/analytics/pro/h;->l:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    return-void

    .line 145
    :catchall_0
    move-exception p1

    .line 147
    :goto_3
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;JLjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 154
    const-string v0, "ts"

    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "\\|"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 155
    :try_start_1
    sget-object p1, Lcom/umeng/analytics/pro/h;->f:Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 156
    return-void

    .line 158
    :cond_0
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/o;->b(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    return-void

    .line 163
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v4, 0xa

    if-le v1, v4, :cond_2

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "map size is "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", please check"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 165
    return-void

    .line 168
    :cond_2
    sget-object v1, Lcom/umeng/analytics/pro/b;->aD:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 169
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "key is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", please check key, illegal"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 170
    sget-object p1, Lcom/umeng/analytics/pro/h;->b:Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    return-void

    .line 174
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 175
    const-string v5, "id"

    invoke-virtual {v1, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 177
    const-wide/16 v5, 0x0

    cmp-long v7, p3, v5

    if-lez v7, :cond_4

    .line 178
    const-string v5, "du"

    invoke-virtual {v1, v5, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 180
    :cond_4
    const-string p3, "__t"

    const/16 p4, 0x801

    invoke-virtual {v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 182
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "befort ekv map, event is "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 184
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 185
    nop

    .line 186
    nop

    .line 187
    nop

    .line 188
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1d

    .line 189
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 190
    sget-object p4, Lcom/umeng/analytics/pro/b;->aD:[Ljava/lang/String;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1c

    .line 191
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    .line 192
    instance-of v5, p4, Ljava/lang/String;

    if-nez v5, :cond_1b

    instance-of v5, p4, Ljava/lang/Integer;

    if-nez v5, :cond_1b

    instance-of v5, p4, Ljava/lang/Long;

    if-nez v5, :cond_1b

    instance-of v5, p4, Ljava/lang/Short;

    if-nez v5, :cond_1b

    instance-of v5, p4, Ljava/lang/Float;

    if-nez v5, :cond_1b

    instance-of v5, p4, Ljava/lang/Double;

    if-eqz v5, :cond_5

    goto/16 :goto_7

    .line 199
    :cond_5
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "please check key or value, illegal type!"

    if-eqz v5, :cond_1a

    .line 200
    :try_start_2
    instance-of v5, p4, [I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v7, "please check key or value, size overlength!"

    if-eqz v5, :cond_8

    .line 201
    :try_start_3
    check-cast p4, [I

    check-cast p4, [I

    .line 202
    array-length v5, p4

    if-le v5, v4, :cond_6

    .line 203
    invoke-static {v7}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 204
    return-void

    .line 206
    :cond_6
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 207
    const/4 v6, 0x0

    :goto_1
    array-length v7, p4

    if-ge v6, v7, :cond_7

    .line 208
    aget v7, p4, v6

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 207
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 210
    :cond_7
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    goto :goto_0

    :cond_8
    instance-of v5, p4, [D

    if-eqz v5, :cond_b

    .line 212
    check-cast p4, [D

    check-cast p4, [D

    .line 213
    array-length v5, p4

    if-le v5, v4, :cond_9

    .line 214
    invoke-static {v7}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 215
    return-void

    .line 217
    :cond_9
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 218
    const/4 v6, 0x0

    :goto_2
    array-length v7, p4

    if-ge v6, v7, :cond_a

    .line 219
    aget-wide v7, p4, v6

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 218
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 221
    :cond_a
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    goto/16 :goto_0

    :cond_b
    instance-of v5, p4, [J

    if-eqz v5, :cond_e

    .line 223
    check-cast p4, [J

    check-cast p4, [J

    .line 224
    array-length v5, p4

    if-le v5, v4, :cond_c

    .line 225
    invoke-static {v7}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 226
    return-void

    .line 228
    :cond_c
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 229
    const/4 v6, 0x0

    :goto_3
    array-length v7, p4

    if-ge v6, v7, :cond_d

    .line 230
    aget-wide v7, p4, v6

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 229
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 232
    :cond_d
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    goto/16 :goto_0

    :cond_e
    instance-of v5, p4, [F

    if-eqz v5, :cond_11

    .line 234
    check-cast p4, [F

    check-cast p4, [F

    .line 235
    array-length v5, p4

    if-le v5, v4, :cond_f

    .line 236
    invoke-static {v7}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 237
    return-void

    .line 239
    :cond_f
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 240
    const/4 v6, 0x0

    :goto_4
    array-length v7, p4

    if-ge v6, v7, :cond_10

    .line 241
    aget v7, p4, v6

    float-to-double v7, v7

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 240
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 243
    :cond_10
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    goto/16 :goto_0

    :cond_11
    instance-of v5, p4, [S

    if-eqz v5, :cond_14

    .line 245
    check-cast p4, [S

    check-cast p4, [S

    .line 246
    array-length v5, p4

    if-le v5, v4, :cond_12

    .line 247
    invoke-static {v7}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 248
    return-void

    .line 250
    :cond_12
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 251
    const/4 v6, 0x0

    :goto_5
    array-length v7, p4

    if-ge v6, v7, :cond_13

    .line 252
    aget-short v7, p4, v6

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 251
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 254
    :cond_13
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    goto/16 :goto_0

    :cond_14
    instance-of v5, p4, [Ljava/lang/String;

    if-eqz v5, :cond_19

    .line 256
    check-cast p4, [Ljava/lang/String;

    check-cast p4, [Ljava/lang/String;

    .line 257
    array-length v5, p4

    if-le v5, v4, :cond_15

    .line 258
    invoke-static {v7}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 259
    return-void

    .line 261
    :cond_15
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 262
    const/4 v6, 0x0

    :goto_6
    array-length v7, p4

    if-ge v6, v7, :cond_18

    .line 263
    aget-object v7, p4, v6

    if-nez v7, :cond_16

    .line 264
    const-string p1, "please check array, null item!"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 265
    return-void

    .line 267
    :cond_16
    aget-object v7, p4, v6

    invoke-direct {p0, v7}, Lcom/umeng/analytics/pro/o;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 268
    return-void

    .line 270
    :cond_17
    aget-object v7, p4, v6

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 262
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 272
    :cond_18
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    goto/16 :goto_0

    .line 274
    :cond_19
    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 275
    return-void

    .line 278
    :cond_1a
    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 279
    return-void

    .line 198
    :cond_1b
    :goto_7
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 283
    :cond_1c
    sget-object p1, Lcom/umeng/analytics/pro/h;->e:Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 284
    return-void

    .line 289
    :cond_1d
    nop

    .line 290
    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->isMainProcess(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 293
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/umeng/analytics/pro/u;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_8

    .line 295
    :cond_1e
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, p3, v4, v5}, Lcom/umeng/analytics/pro/u;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    .line 298
    :goto_8
    const-string p3, "__i"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1f

    const-string p2, "-1"

    :cond_1f
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_21

    .line 303
    :try_start_4
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_20

    .line 305
    const-string p3, "_$sp"

    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 308
    :cond_20
    goto :goto_9

    .line 307
    :catch_0
    move-exception p2

    .line 312
    :cond_21
    :goto_9
    :try_start_5
    const-string p2, "ds"

    invoke-virtual {v1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 313
    const-string p2, "pn"

    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object p3

    sget-object p4, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-virtual {p3, p4}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->a()V

    .line 319
    iget-object p2, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    if-eqz p2, :cond_22

    .line 320
    iget-object p2, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_22

    .line 321
    iget-object p2, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 326
    if-nez p2, :cond_22

    .line 327
    const-string p2, "$st_fl"

    const/4 p3, 0x1

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 328
    iget-object p2, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 329
    sget-object p1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->c(Landroid/content/Context;)V

    .line 334
    :cond_22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "----->>>>>ekv event json is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 336
    sget-object p1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    const/16 p2, 0x1001

    sget-object p3, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    .line 337
    invoke-static {p3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p3

    .line 336
    invoke-static {p1, p2, p3, v1}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 339
    goto :goto_a

    .line 338
    :catchall_0
    move-exception p1

    .line 340
    :goto_a
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 344
    const-string v0, "du"

    const-string v1, "ts"

    const-string v2, "id"

    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 345
    return-void

    .line 347
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 348
    invoke-virtual {v3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 350
    const/4 p1, 0x0

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 351
    const-string v4, "__t"

    const/16 v5, 0x802

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "befort gkv map, event is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 355
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 356
    nop

    .line 357
    nop

    .line 358
    const/4 v4, 0x0

    .line 359
    :goto_0
    const/16 v5, 0xa

    if-ge v4, v5, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 360
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 361
    const-string v6, "$st_fl"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 362
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 363
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 364
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 365
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 366
    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_1

    instance-of v7, v6, Ljava/lang/Integer;

    if-nez v7, :cond_1

    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_2

    .line 367
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 375
    :cond_3
    invoke-static {}, Lcom/umeng/analytics/pro/u;->a()Lcom/umeng/analytics/pro/u;

    move-result-object p2

    sget-object v0, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/u;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 377
    const-string v0, "__i"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p2, "-1"

    :cond_4
    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_6

    .line 382
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result p3

    if-lez p3, :cond_5

    .line 384
    const-string p3, "_$sp"

    invoke-virtual {v3, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    :cond_5
    goto :goto_1

    .line 386
    :catch_0
    move-exception p2

    .line 391
    :cond_6
    :goto_1
    :try_start_2
    const-string p2, "ds"

    invoke-virtual {v3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 392
    const-string p1, "pn"

    invoke-static {}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getInstance()Lcom/umeng/commonsdk/service/UMGlobalContext;

    move-result-object p2

    sget-object p3, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "----->>>>>gkv event json is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 418
    sget-object p1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    const/16 p2, 0x1002

    sget-object p3, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    .line 419
    invoke-static {p3}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p3

    .line 418
    invoke-static {p1, p2, p3, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    goto :goto_2

    .line 421
    :catchall_0
    move-exception p1

    .line 426
    :goto_2
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 551
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_5

    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/umeng/analytics/pro/o;->a()V

    .line 556
    nop

    .line 557
    iget-object v1, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    const/16 v2, 0x80

    const/4 v3, 0x5

    if-nez v1, :cond_5

    .line 558
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    .line 559
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 560
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    .line 562
    iget-object v5, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    if-nez v5, :cond_1

    .line 563
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iput-object v5, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    goto :goto_1

    .line 565
    :cond_1
    iget-object v5, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lt v5, v3, :cond_2

    .line 566
    goto :goto_2

    .line 570
    :cond_2
    :goto_1
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 571
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 572
    invoke-static {v5, v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 573
    invoke-direct {p0, v5, v0}, Lcom/umeng/analytics/pro/o;->a(Ljava/lang/String;Z)V

    .line 560
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 576
    :cond_4
    :goto_2
    sget-object p1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->c(Landroid/content/Context;)V

    .line 577
    goto :goto_4

    .line 578
    :cond_5
    iget-object v1, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lt v1, v3, :cond_6

    .line 579
    const-string p1, "already setFistLaunchEvent, igone."

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 580
    return-void

    .line 582
    :cond_6
    const/4 v1, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 583
    iget-object v4, p0, Lcom/umeng/analytics/pro/o;->h:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lt v4, v3, :cond_7

    .line 584
    const-string p1, " add setFistLaunchEvent over."

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->d(Ljava/lang/String;)V

    .line 585
    return-void

    .line 587
    :cond_7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->subStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 588
    invoke-direct {p0, v4, v0}, Lcom/umeng/analytics/pro/o;->a(Ljava/lang/String;Z)V

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 591
    :cond_8
    sget-object p1, Lcom/umeng/analytics/pro/o;->g:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/o;->c(Landroid/content/Context;)V

    .line 601
    :goto_4
    goto :goto_6

    .line 552
    :cond_9
    :goto_5
    sget-object p1, Lcom/umeng/analytics/pro/h;->aj:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-static {p1, v0, v1}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    return-void

    .line 597
    :catch_0
    move-exception p1

    .line 602
    :goto_6
    return-void
.end method
