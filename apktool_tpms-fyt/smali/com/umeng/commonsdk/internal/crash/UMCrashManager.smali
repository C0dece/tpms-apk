.class public Lcom/umeng/commonsdk/internal/crash/UMCrashManager;
.super Ljava/lang/Object;
.source "UMCrashManager.java"


# static fields
.field private static isReportCrash:Z

.field private static mObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->isReportCrash:Z

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->mObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 20
    sget-object v0, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 20
    sget-boolean v0, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->isReportCrash:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 20
    sput-boolean p0, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->isReportCrash:Z

    return p0
.end method

.method public static reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 4

    .line 28
    sget-boolean v0, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->isReportCrash:Z

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->isReportCrash:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "walle-crash"

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/commonsdk/internal/crash/UMCrashManager$1;

    invoke-direct {v1, p0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager$1;-><init>(Landroid/content/Context;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 71
    :cond_0
    return-void
.end method
