.class public Lcom/tpms/modle/TimeSeedEvent;
.super Ljava/lang/Object;
.source "TimeSeedEvent.java"


# instance fields
.field public mSeedAck:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "state"    # I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/tpms/modle/TimeSeedEvent;->mSeedAck:I

    .line 10
    iput p1, p0, Lcom/tpms/modle/TimeSeedEvent;->mSeedAck:I

    .line 11
    return-void
.end method
