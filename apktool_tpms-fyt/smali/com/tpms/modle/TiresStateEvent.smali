.class public Lcom/tpms/modle/TiresStateEvent;
.super Ljava/lang/Object;
.source "TiresStateEvent.java"


# instance fields
.field public mState:Lcom/tpms/modle/TiresState;

.field public tires:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/tpms/modle/TiresState;

    invoke-direct {v0}, Lcom/tpms/modle/TiresState;-><init>()V

    iput-object v0, p0, Lcom/tpms/modle/TiresStateEvent;->mState:Lcom/tpms/modle/TiresState;

    .line 6
    return-void
.end method
