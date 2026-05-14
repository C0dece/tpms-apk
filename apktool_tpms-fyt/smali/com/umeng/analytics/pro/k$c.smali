.class public Lcom/umeng/analytics/pro/k$c;
.super Ljava/lang/Object;
.source "CoreProtocolImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/umeng/commonsdk/statistics/noise/ABTest;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    .line 1395
    const/4 v1, -0x1

    iput v1, p0, Lcom/umeng/analytics/pro/k$c;->b:I

    .line 1396
    iput v1, p0, Lcom/umeng/analytics/pro/k$c;->c:I

    .line 1398
    iput v1, p0, Lcom/umeng/analytics/pro/k$c;->d:I

    .line 1399
    iput v1, p0, Lcom/umeng/analytics/pro/k$c;->e:I

    .line 1401
    iput-object v0, p0, Lcom/umeng/analytics/pro/k$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    .line 1404
    invoke-static {}, Lcom/umeng/analytics/pro/k;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/ABTest;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/k$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    .line 1405
    return-void
.end method

.method private b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
    .locals 3

    .line 1556
    nop

    .line 1558
    if-eqz p1, :cond_d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/4 v0, 0x6

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    .line 1596
    iget-object p1, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    if-eqz p2, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;-><init>()V

    goto/16 :goto_5

    .line 1572
    :cond_1
    iget-object p1, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    if-eqz v0, :cond_2

    .line 1573
    nop

    .line 1574
    move-object v0, p1

    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->setReportInterval(J)V

    goto/16 :goto_5

    .line 1576
    :cond_2
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;-><init>()V

    .line 1577
    move-object v0, p1

    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->setReportInterval(J)V

    .line 1579
    goto/16 :goto_5

    .line 1592
    :cond_3
    iget-object p1, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;

    .line 1593
    invoke-static {}, Lcom/umeng/analytics/pro/k;->g()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$SmartPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    .line 1594
    :goto_0
    goto :goto_5

    .line 1563
    :cond_5
    iget-object p1, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    if-eqz v0, :cond_6

    .line 1564
    nop

    .line 1565
    move-object v0, p1

    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->setReportInterval(J)V

    goto :goto_5

    .line 1567
    :cond_6
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    invoke-static {}, Lcom/umeng/analytics/pro/k;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v0

    int-to-long v1, p2

    invoke-direct {p1, v0, v1, v2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;J)V

    .line 1569
    goto :goto_5

    .line 1588
    :cond_7
    iget-object p1, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;

    if-eqz p2, :cond_8

    goto :goto_1

    :cond_8
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;

    .line 1589
    invoke-static {}, Lcom/umeng/analytics/pro/k;->g()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportWifiOnly;-><init>(Landroid/content/Context;)V

    .line 1590
    :goto_1
    goto :goto_5

    .line 1581
    :cond_9
    iget-object p1, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;

    if-eqz p2, :cond_a

    goto :goto_2

    :cond_a
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;

    .line 1582
    invoke-static {}, Lcom/umeng/analytics/pro/k;->g()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportDaily;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    .line 1583
    :goto_2
    goto :goto_5

    .line 1560
    :cond_b
    iget-object p1, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    if-eqz p2, :cond_c

    goto :goto_3

    :cond_c
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;-><init>()V

    .line 1561
    :goto_3
    goto :goto_5

    .line 1585
    :cond_d
    iget-object p1, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of p2, p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;

    if-eqz p2, :cond_e

    goto :goto_4

    :cond_e
    new-instance p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportRealtime;-><init>()V

    .line 1586
    :goto_4
    nop

    .line 1599
    :goto_5
    return-object p1
.end method


# virtual methods
.method public a(I)I
    .locals 3

    .line 1445
    invoke-static {}, Lcom/umeng/analytics/pro/k;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "test_report_interval"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1444
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1446
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_1

    const v1, 0x15180

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 1450
    :cond_0
    mul-int/lit16 v0, v0, 0x3e8

    return v0

    .line 1447
    :cond_1
    :goto_0
    return p1
.end method

.method public a()V
    .locals 2

    .line 1409
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, v0, v0}, Lcom/umeng/analytics/pro/k$c;->a(II)[I

    move-result-object v0

    .line 1411
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/umeng/analytics/pro/k$c;->b:I

    .line 1412
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/umeng/analytics/pro/k$c;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1414
    goto :goto_0

    .line 1413
    :catchall_0
    move-exception v0

    .line 1415
    :goto_0
    return-void
.end method

.method public a(II)[I
    .locals 7

    .line 1418
    invoke-static {}, Lcom/umeng/analytics/pro/k;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "-1"

    const-string v2, "report_policy"

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1419
    invoke-static {}, Lcom/umeng/analytics/pro/k;->g()Landroid/content/Context;

    move-result-object v2

    const-string v3, "report_interval"

    invoke-static {v2, v3, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1420
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v0, v2, :cond_7

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy;->isValid(I)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 1424
    :cond_0
    const/4 v6, 0x6

    if-ne v6, v0, :cond_3

    .line 1425
    const/16 p1, 0x5a

    if-eq v1, v2, :cond_1

    if-lt v1, p1, :cond_1

    const p2, 0x15180

    if-le v1, p2, :cond_2

    .line 1426
    :cond_1
    const/16 v1, 0x5a

    .line 1429
    :cond_2
    new-array p1, v5, [I

    aput v0, p1, v4

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p1, v3

    return-object p1

    .line 1432
    :cond_3
    const/16 v6, 0xb

    if-ne v6, v0, :cond_6

    .line 1433
    const/16 p1, 0xf

    if-eq v1, v2, :cond_4

    if-lt v1, p1, :cond_4

    const/16 p2, 0xe10

    if-le v1, p2, :cond_5

    .line 1434
    :cond_4
    const/16 v1, 0xf

    .line 1437
    :cond_5
    new-array p1, v5, [I

    aput v0, p1, v4

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p1, v3

    return-object p1

    .line 1440
    :cond_6
    new-array v0, v5, [I

    aput p1, v0, v4

    aput p2, v0, v3

    return-object v0

    .line 1421
    :cond_7
    :goto_0
    new-array v0, v5, [I

    aput p1, v0, v4

    aput p2, v0, v3

    return-object v0
.end method

.method protected b()V
    .locals 11

    .line 1457
    invoke-static {}, Lcom/umeng/analytics/pro/k;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->getService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/noise/Defcon;

    move-result-object v0

    .line 1458
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/Defcon;->isOpen()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    .line 1460
    iget-object v1, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v6, v1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1461
    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;

    invoke-static {}, Lcom/umeng/analytics/pro/k;->g()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;Lcom/umeng/commonsdk/statistics/noise/Defcon;)V

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    .line 1463
    goto/16 :goto_5

    .line 1464
    :cond_2
    invoke-static {}, Lcom/umeng/analytics/pro/k;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "-1"

    const-string v6, "integrated_test"

    invoke-static {v0, v6, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1465
    if-ne v0, v5, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 1466
    :goto_2
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1467
    if-eqz v0, :cond_4

    sget-boolean v6, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-nez v6, :cond_4

    .line 1468
    sget-object v6, Lcom/umeng/analytics/pro/h;->J:Ljava/lang/String;

    const-string v7, "\\|"

    invoke-static {v6, v2, v7, v3, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1472
    :cond_4
    sget-boolean v6, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    .line 1476
    new-instance v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    invoke-static {}, Lcom/umeng/analytics/pro/k;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;-><init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    goto/16 :goto_5

    .line 1477
    :cond_5
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->isInTest()Z

    move-result v0

    const/4 v6, -0x1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/umeng/analytics/pro/k$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "RPT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1481
    nop

    .line 1482
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestPolicy()I

    move-result v0

    const/4 v7, 0x6

    if-ne v0, v7, :cond_9

    .line 1484
    invoke-static {}, Lcom/umeng/analytics/pro/k;->g()Landroid/content/Context;

    move-result-object v0

    const-string v7, "test_report_interval"

    invoke-static {v0, v7, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1483
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1485
    if-eq v0, v6, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 1486
    :goto_3
    if-eqz v0, :cond_7

    .line 1487
    const v0, 0x15f90

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/k$c;->a(I)I

    move-result v0

    goto :goto_4

    .line 1488
    :cond_7
    iget v0, p0, Lcom/umeng/analytics/pro/k$c;->c:I

    if-lez v0, :cond_8

    .line 1489
    goto :goto_4

    .line 1491
    :cond_8
    iget v0, p0, Lcom/umeng/analytics/pro/k$c;->e:I

    goto :goto_4

    .line 1482
    :cond_9
    const/4 v0, 0x0

    .line 1494
    :goto_4
    iget-object v1, p0, Lcom/umeng/analytics/pro/k$c;->f:Lcom/umeng/commonsdk/statistics/noise/ABTest;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/noise/ABTest;->getTestPolicy()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/umeng/analytics/pro/k$c;->b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    .line 1495
    goto :goto_5

    .line 1496
    :cond_a
    iget v0, p0, Lcom/umeng/analytics/pro/k$c;->d:I

    .line 1497
    iget v1, p0, Lcom/umeng/analytics/pro/k$c;->e:I

    .line 1498
    iget v7, p0, Lcom/umeng/analytics/pro/k$c;->b:I

    if-eq v7, v6, :cond_b

    .line 1499
    nop

    .line 1500
    iget v1, p0, Lcom/umeng/analytics/pro/k$c;->c:I

    move v0, v7

    .line 1502
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/umeng/analytics/pro/k$c;->b(II)Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    .line 1507
    :goto_5
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1509
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportAtLaunch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    if-eqz v0, :cond_c

    .line 1511
    :try_start_1
    sget-object v0, Lcom/umeng/analytics/pro/h;->H:Ljava/lang/String;

    invoke-static {v0, v2, v1, v3, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_7

    .line 1512
    :cond_c
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "@"

    const-wide/16 v7, 0x3e8

    if-eqz v0, :cond_d

    .line 1514
    :try_start_2
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->getReportInterval()J

    move-result-wide v9

    .line 1515
    div-long/2addr v9, v7

    .line 1516
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1517
    new-array v3, v5, [Ljava/lang/String;

    aput-object v6, v3, v4

    .line 1518
    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v4

    .line 1519
    sget-object v0, Lcom/umeng/analytics/pro/h;->I:Ljava/lang/String;

    invoke-static {v0, v2, v1, v3, v5}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1520
    goto :goto_7

    :cond_d
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DebugPolicy;

    if-eqz v0, :cond_e

    .line 1522
    sget-object v0, Lcom/umeng/analytics/pro/h;->K:Ljava/lang/String;

    invoke-static {v0, v2, v1, v3, v3}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_7

    .line 1523
    :cond_e
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    if-eqz v0, :cond_f

    .line 1525
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    check-cast v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportQuasiRealtime;->getReportInterval()J

    move-result-wide v9

    .line 1526
    div-long/2addr v9, v7

    .line 1527
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1528
    new-array v3, v5, [Ljava/lang/String;

    aput-object v6, v3, v4

    .line 1529
    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v4

    .line 1530
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->umDebugLog:Lcom/umeng/commonsdk/debug/UMLog;

    sget-object v0, Lcom/umeng/analytics/pro/h;->L:Ljava/lang/String;

    invoke-static {v0, v2, v1, v3, v5}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_6

    .line 1531
    :cond_f
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    instance-of v0, v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$DefconPolicy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    nop

    .line 1537
    :goto_7
    goto :goto_8

    .line 1535
    :catchall_0
    move-exception v0

    .line 1540
    :cond_10
    :goto_8
    return-void
.end method

.method public c()Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
    .locals 1

    .line 1543
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/k$c;->b()V

    .line 1544
    iget-object v0, p0, Lcom/umeng/analytics/pro/k$c;->a:Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;

    return-object v0
.end method
