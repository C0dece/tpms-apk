.class public Lcom/tpms/modle/AlarmAgrs;
.super Ljava/lang/Object;
.source "AlarmAgrs.java"


# instance fields
.field public AirPressureHi:I

.field public AirPressureLo:I

.field public Temperature:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/16 v0, 0x140

    iput v0, p0, Lcom/tpms/modle/AlarmAgrs;->AirPressureHi:I

    .line 7
    const/16 v0, 0xb4

    iput v0, p0, Lcom/tpms/modle/AlarmAgrs;->AirPressureLo:I

    .line 8
    const/16 v0, 0x41

    iput v0, p0, Lcom/tpms/modle/AlarmAgrs;->Temperature:I

    .line 9
    return-void
.end method
