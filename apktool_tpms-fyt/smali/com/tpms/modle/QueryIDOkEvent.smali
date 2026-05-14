.class public Lcom/tpms/modle/QueryIDOkEvent;
.super Ljava/lang/Object;
.source "QueryIDOkEvent.java"


# instance fields
.field public mID:Ljava/lang/String;

.field public tires:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/tpms/modle/QueryIDOkEvent;->mID:Ljava/lang/String;

    return-void
.end method
