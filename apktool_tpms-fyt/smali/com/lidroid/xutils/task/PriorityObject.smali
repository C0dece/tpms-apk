.class public Lcom/lidroid/xutils/task/PriorityObject;
.super Ljava/lang/Object;
.source "PriorityObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final obj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final priority:Lcom/lidroid/xutils/task/Priority;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/task/Priority;Ljava/lang/Object;)V
    .locals 1
    .param p1, "priority"    # Lcom/lidroid/xutils/task/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/task/Priority;",
            "TE;)V"
        }
    .end annotation

    .line 13
    .local p0, "this":Lcom/lidroid/xutils/task/PriorityObject;, "Lcom/lidroid/xutils/task/PriorityObject<TE;>;"
    .local p2, "obj":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    if-nez p1, :cond_0

    sget-object v0, Lcom/lidroid/xutils/task/Priority;->DEFAULT:Lcom/lidroid/xutils/task/Priority;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObject;->priority:Lcom/lidroid/xutils/task/Priority;

    .line 15
    iput-object p2, p0, Lcom/lidroid/xutils/task/PriorityObject;->obj:Ljava/lang/Object;

    .line 16
    return-void
.end method
