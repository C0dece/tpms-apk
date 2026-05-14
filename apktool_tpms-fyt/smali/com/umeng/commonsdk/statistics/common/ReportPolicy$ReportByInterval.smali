.class public Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;
.super Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/common/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportByInterval"
.end annotation


# static fields
.field private static MAX_REPORT_INTERVAL:J

.field private static MIN_REPORT_INTERVAL:J


# instance fields
.field private mReportInterval:J

.field private mTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 143
    const-wide/32 v0, 0x15f90

    sput-wide v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MIN_REPORT_INTERVAL:J

    .line 144
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MAX_REPORT_INTERVAL:J

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer;J)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportStrategy;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mTracer:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    .line 151
    invoke-virtual {p0, p2, p3}, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->setReportInterval(J)V

    .line 152
    return-void
.end method

.method public static isValidValue(I)Z
    .locals 4

    .line 179
    int-to-long v0, p0

    sget-wide v2, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MIN_REPORT_INTERVAL:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    .line 180
    const/4 p0, 0x0

    return p0

    .line 182
    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getReportInterval()J
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    return-wide v0
.end method

.method public setReportInterval(J)V
    .locals 3

    .line 167
    sget-wide v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MIN_REPORT_INTERVAL:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    sget-wide v0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MAX_REPORT_INTERVAL:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 168
    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    goto :goto_0

    .line 170
    :cond_0
    sget-wide p1, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->MIN_REPORT_INTERVAL:J

    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    .line 172
    :goto_0
    return-void
.end method

.method public shouldSendMessage(Z)Z
    .locals 5

    .line 156
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 157
    return v0

    .line 160
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->lastSuccessfulBuildTime(Landroid/content/Context;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/umeng/commonsdk/statistics/common/ReportPolicy$ReportByInterval;->mReportInterval:J

    cmp-long p1, v1, v3

    if-ltz p1, :cond_1

    .line 161
    return v0

    .line 163
    :cond_1
    const/4 p1, 0x0

    return p1
.end method
