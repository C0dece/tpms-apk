.class public Lcom/tpms/modle/TiresState;
.super Ljava/lang/Object;
.source "TiresState.java"


# instance fields
.field public AirPressure:I

.field public Leakage:Z

.field public LowPower:Z

.field public NoSignal:Z

.field public Temperature:I

.field public TiresID:Ljava/lang/String;

.field public error:Ljava/lang/String;

.field public mAlarmCntrols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tpms/modle/AlarmCntrol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/tpms/modle/TiresState;->TiresID:Ljava/lang/String;

    .line 11
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tpms/modle/TiresState;->Leakage:Z

    .line 12
    iput-boolean v1, p0, Lcom/tpms/modle/TiresState;->LowPower:Z

    .line 13
    iput-boolean v1, p0, Lcom/tpms/modle/TiresState;->NoSignal:Z

    .line 14
    iput-object v0, p0, Lcom/tpms/modle/TiresState;->error:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tpms/modle/TiresState;->mAlarmCntrols:Ljava/util/Map;

    return-void
.end method
