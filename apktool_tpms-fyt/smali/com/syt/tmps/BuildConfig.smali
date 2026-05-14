.class public final Lcom/syt/tmps/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.syt.tmps"

.field public static final AppChannel:Ljava/lang/String; = "public"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z

.field public static final ENABLE_FOUCES:Z = false

.field public static final ENABLE_NOTIF:Z = true

.field public static final FLAVOR:Ljava/lang/String; = ""

.field public static final USB_READ_SLEEP:J = 0x64L

.field public static final VERSION_CODE:I = 0x9e

.field public static final VERSION_NAME:Ljava/lang/String; = "V1.1.58M_USB_L10_20201229"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-string v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/syt/tmps/BuildConfig;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
