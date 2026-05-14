.class public Lcom/umeng/commonsdk/statistics/idtracking/k;
.super Lcom/umeng/commonsdk/statistics/idtracking/a;
.source "UMTTFiveTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "umtt5"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    const-string v0, "umtt5"

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/a;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/k;->b:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 7

    .line 28
    nop

    .line 30
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.umeng.commonsdk.internal.utils.SDStorageAgent"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    const-string v2, "getUmtt5"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 33
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/umeng/commonsdk/statistics/idtracking/k;->b:Landroid/content/Context;

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 37
    :cond_0
    :goto_0
    goto :goto_1

    .line 36
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 35
    :catch_0
    move-exception v1

    goto :goto_0

    .line 39
    :goto_1
    return-object v0
.end method
