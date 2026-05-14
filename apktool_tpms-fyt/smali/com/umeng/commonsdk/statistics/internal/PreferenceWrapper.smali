.class public Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;
.super Ljava/lang/Object;
.source "PreferenceWrapper.java"


# static fields
.field private static final DEFAULT_PREFERENCE:Ljava/lang/String; = "umeng_general_config"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 28
    if-eqz p0, :cond_0

    .line 29
    const/4 v0, 0x0

    const-string v1, "umeng_general_config"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    .line 31
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1

    .line 20
    if-eqz p0, :cond_0

    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
