.class public Lcom/tpms/modle/AlarmCntrol;
.super Ljava/lang/Object;
.source "AlarmCntrol.java"


# instance fields
.field public mError:Ljava/lang/String;

.field public mErrorKey:Ljava/lang/String;

.field public mTimeInterval:J

.field public mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/tpms/modle/AlarmCntrol;->mError:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/tpms/modle/AlarmCntrol;->mErrorKey:Ljava/lang/String;

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tpms/modle/AlarmCntrol;->mTimeStamp:J

    .line 10
    iput-wide v0, p0, Lcom/tpms/modle/AlarmCntrol;->mTimeInterval:J

    return-void
.end method
