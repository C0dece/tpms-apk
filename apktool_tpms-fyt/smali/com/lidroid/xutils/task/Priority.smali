.class public final enum Lcom/lidroid/xutils/task/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lidroid/xutils/task/Priority;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BG_LOW:Lcom/lidroid/xutils/task/Priority;

.field public static final enum BG_NORMAL:Lcom/lidroid/xutils/task/Priority;

.field public static final enum BG_TOP:Lcom/lidroid/xutils/task/Priority;

.field public static final enum DEFAULT:Lcom/lidroid/xutils/task/Priority;

.field private static final synthetic ENUM$VALUES:[Lcom/lidroid/xutils/task/Priority;

.field public static final enum UI_LOW:Lcom/lidroid/xutils/task/Priority;

.field public static final enum UI_NORMAL:Lcom/lidroid/xutils/task/Priority;

.field public static final enum UI_TOP:Lcom/lidroid/xutils/task/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 9
    new-instance v0, Lcom/lidroid/xutils/task/Priority;

    const/4 v1, 0x0

    const-string v2, "UI_TOP"

    invoke-direct {v0, v2, v1}, Lcom/lidroid/xutils/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lidroid/xutils/task/Priority;->UI_TOP:Lcom/lidroid/xutils/task/Priority;

    .line 10
    new-instance v0, Lcom/lidroid/xutils/task/Priority;

    const/4 v2, 0x1

    const-string v3, "UI_NORMAL"

    invoke-direct {v0, v3, v2}, Lcom/lidroid/xutils/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lidroid/xutils/task/Priority;->UI_NORMAL:Lcom/lidroid/xutils/task/Priority;

    .line 11
    new-instance v0, Lcom/lidroid/xutils/task/Priority;

    const/4 v3, 0x2

    const-string v4, "UI_LOW"

    invoke-direct {v0, v4, v3}, Lcom/lidroid/xutils/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lidroid/xutils/task/Priority;->UI_LOW:Lcom/lidroid/xutils/task/Priority;

    .line 12
    new-instance v0, Lcom/lidroid/xutils/task/Priority;

    const/4 v4, 0x3

    const-string v5, "DEFAULT"

    invoke-direct {v0, v5, v4}, Lcom/lidroid/xutils/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lidroid/xutils/task/Priority;->DEFAULT:Lcom/lidroid/xutils/task/Priority;

    .line 13
    new-instance v0, Lcom/lidroid/xutils/task/Priority;

    const/4 v5, 0x4

    const-string v6, "BG_TOP"

    invoke-direct {v0, v6, v5}, Lcom/lidroid/xutils/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lidroid/xutils/task/Priority;->BG_TOP:Lcom/lidroid/xutils/task/Priority;

    .line 14
    new-instance v0, Lcom/lidroid/xutils/task/Priority;

    const/4 v6, 0x5

    const-string v7, "BG_NORMAL"

    invoke-direct {v0, v7, v6}, Lcom/lidroid/xutils/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lidroid/xutils/task/Priority;->BG_NORMAL:Lcom/lidroid/xutils/task/Priority;

    .line 15
    new-instance v0, Lcom/lidroid/xutils/task/Priority;

    const/4 v7, 0x6

    const-string v8, "BG_LOW"

    invoke-direct {v0, v8, v7}, Lcom/lidroid/xutils/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lidroid/xutils/task/Priority;->BG_LOW:Lcom/lidroid/xutils/task/Priority;

    .line 8
    const/4 v8, 0x7

    new-array v8, v8, [Lcom/lidroid/xutils/task/Priority;

    sget-object v9, Lcom/lidroid/xutils/task/Priority;->UI_TOP:Lcom/lidroid/xutils/task/Priority;

    aput-object v9, v8, v1

    sget-object v1, Lcom/lidroid/xutils/task/Priority;->UI_NORMAL:Lcom/lidroid/xutils/task/Priority;

    aput-object v1, v8, v2

    sget-object v1, Lcom/lidroid/xutils/task/Priority;->UI_LOW:Lcom/lidroid/xutils/task/Priority;

    aput-object v1, v8, v3

    sget-object v1, Lcom/lidroid/xutils/task/Priority;->DEFAULT:Lcom/lidroid/xutils/task/Priority;

    aput-object v1, v8, v4

    sget-object v1, Lcom/lidroid/xutils/task/Priority;->BG_TOP:Lcom/lidroid/xutils/task/Priority;

    aput-object v1, v8, v5

    sget-object v1, Lcom/lidroid/xutils/task/Priority;->BG_NORMAL:Lcom/lidroid/xutils/task/Priority;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/lidroid/xutils/task/Priority;->ENUM$VALUES:[Lcom/lidroid/xutils/task/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lidroid/xutils/task/Priority;
    .locals 1

    .line 1
    const-class v0, Lcom/lidroid/xutils/task/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lidroid/xutils/task/Priority;

    return-object p0
.end method

.method public static values()[Lcom/lidroid/xutils/task/Priority;
    .locals 4

    .line 1
    sget-object v0, Lcom/lidroid/xutils/task/Priority;->ENUM$VALUES:[Lcom/lidroid/xutils/task/Priority;

    array-length v1, v0

    new-array v2, v1, [Lcom/lidroid/xutils/task/Priority;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
