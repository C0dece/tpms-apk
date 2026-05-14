.class public Lcom/tpms/modle/TiresExchangeEvent;
.super Ljava/lang/Object;
.source "TiresExchangeEvent.java"


# instance fields
.field public EventName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/tpms/modle/TiresExchangeEvent;->EventName:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/tpms/modle/TiresExchangeEvent;->EventName:Ljava/lang/String;

    .line 11
    return-void
.end method
