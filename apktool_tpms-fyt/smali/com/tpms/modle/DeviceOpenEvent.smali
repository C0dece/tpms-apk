.class public Lcom/tpms/modle/DeviceOpenEvent;
.super Ljava/lang/Object;
.source "DeviceOpenEvent.java"


# instance fields
.field public mOpen:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "state"    # Z

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tpms/modle/DeviceOpenEvent;->mOpen:Z

    .line 10
    iput-boolean p1, p0, Lcom/tpms/modle/DeviceOpenEvent;->mOpen:Z

    .line 11
    return-void
.end method
