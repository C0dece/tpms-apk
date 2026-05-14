.class public Lcom/umeng/analytics/AnalyticsConfig;
.super Ljava/lang/Object;
.source "AnalyticsConfig.java"


# static fields
.field public static AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

.field public static CATCH_EXCEPTION:Z

.field public static CHANGE_CATCH_EXCEPTION_NOTALLOW:Z

.field public static CLEAR_EKV_BL:Z

.field public static CLEAR_EKV_WL:Z

.field public static GPU_RENDERER:Ljava/lang/String;

.field public static GPU_VENDER:Ljava/lang/String;

.field static a:[D

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:I

.field public static kContinueSessionMillis:J

.field public static mWrapperType:Ljava/lang/String;

.field public static mWrapperVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    .line 21
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:Ljava/lang/String;

    .line 22
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    .line 24
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    .line 25
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    .line 27
    const/4 v1, 0x0

    sput v1, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    .line 28
    const-string v2, ""

    sput-object v2, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    .line 29
    sput-object v2, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    .line 31
    sget-object v2, Lcom/umeng/analytics/MobclickAgent$PageMode;->LEGACY_AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sput-object v2, Lcom/umeng/analytics/AnalyticsConfig;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    .line 35
    sput-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->CHANGE_CATCH_EXCEPTION_NOTALLOW:Z

    .line 37
    const/4 v2, 0x1

    sput-boolean v2, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    .line 38
    const-wide/16 v2, 0x7530

    sput-wide v2, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    .line 45
    sput-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->CLEAR_EKV_BL:Z

    .line 46
    sput-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->CLEAR_EKV_WL:Z

    .line 51
    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;I)V
    .locals 0

    .line 97
    sput p1, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    .line 98
    invoke-static {p0}, Lcom/umeng/analytics/pro/z;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/z;

    move-result-object p0

    sget p1, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/z;->a(I)V

    .line 99
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    .line 78
    invoke-static {p0}, Lcom/umeng/analytics/pro/z;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/z;

    move-result-object p0

    sget-object p1, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/z;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_0
    const/4 p0, 0x0

    const-string p1, "MobclickAgent.setSecret\u65b9\u6cd5\u53c2\u6570secretkey\u4e0d\u80fd\u4e3anull\uff0c\u4e5f\u4e0d\u80fd\u4e3a\u7a7a\u5b57\u7b26\u4e32\u3002|secretkey\u53c2\u6570\u5fc5\u987b\u662f\u975e\u7a7a \u5b57\u7b26\u4e32\u3002"

    const-string v0, "\\|"

    invoke-static {p1, p0, v0}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    .line 82
    :goto_0
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 0

    .line 54
    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->c:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocation()[D
    .locals 1

    .line 66
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    return-object v0
.end method

.method public static getSecretKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 90
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p0}, Lcom/umeng/analytics/pro/z;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/z;->c()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    .line 93
    :cond_0
    sget-object p0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static getVerticalType(Landroid/content/Context;)I
    .locals 1

    .line 102
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    if-nez v0, :cond_0

    .line 103
    invoke-static {p0}, Lcom/umeng/analytics/pro/z;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/z;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/z;->d()I

    move-result p0

    sput p0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    .line 105
    :cond_0
    sget p0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    return p0
.end method
