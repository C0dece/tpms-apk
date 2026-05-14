.class public abstract Lcom/tpms/widget/Toast2;
.super Ljava/lang/Object;
.source "Toast2.java"


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I

.field private static handler:Landroid/os/Handler;

.field private static run:Ljava/lang/Runnable;

.field private static toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/tpms/widget/Toast2;->handler:Landroid/os/Handler;

    .line 20
    new-instance v0, Lcom/tpms/widget/Toast2$1;

    invoke-direct {v0}, Lcom/tpms/widget/Toast2$1;-><init>()V

    sput-object v0, Lcom/tpms/widget/Toast2;->run:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .line 13
    sget-object v0, Lcom/tpms/widget/Toast2;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method public static show(Landroid/content/Context;II)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 75
    if-eqz p0, :cond_1

    .line 78
    if-gez p2, :cond_0

    .line 79
    const/4 p2, 0x0

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/tpms/widget/Toast2;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 82
    return-void

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The ctx is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 57
    if-eqz p0, :cond_1

    .line 60
    if-gez p2, :cond_0

    .line 61
    const/4 p2, 0x0

    .line 63
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/tpms/widget/Toast2;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 64
    return-void

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The ctx is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .line 27
    sget-object v0, Lcom/tpms/widget/Toast2;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/tpms/widget/Toast2;->run:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    const/16 p2, 0xbb8

    .line 35
    goto :goto_0

    .line 31
    :cond_1
    const/16 p2, 0x3e8

    .line 32
    nop

    .line 39
    :goto_0
    sget-object v0, Lcom/tpms/widget/Toast2;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 42
    :cond_2
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/tpms/widget/Toast2;->toast:Landroid/widget/Toast;

    .line 44
    :goto_1
    sget-object v0, Lcom/tpms/widget/Toast2;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/tpms/widget/Toast2;->run:Ljava/lang/Runnable;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    sget-object v0, Lcom/tpms/widget/Toast2;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 46
    return-void
.end method
