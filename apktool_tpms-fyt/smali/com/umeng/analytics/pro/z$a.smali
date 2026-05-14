.class final Lcom/umeng/analytics/pro/z$a;
.super Ljava/lang/Object;
.source "SPHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/pro/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/umeng/analytics/pro/z;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/z;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/z$a;->a:Lcom/umeng/analytics/pro/z;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/analytics/pro/z;
    .locals 1

    .line 25
    sget-object v0, Lcom/umeng/analytics/pro/z$a;->a:Lcom/umeng/analytics/pro/z;

    return-object v0
.end method
