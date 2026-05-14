.class public final enum Lcom/lidroid/xutils/http/HttpHandler$State;
.super Ljava/lang/Enum;
.source "HttpHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/http/HttpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lidroid/xutils/http/HttpHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

.field private static final synthetic ENUM$VALUES:[Lcom/lidroid/xutils/http/HttpHandler$State;

.field public static final enum FAILURE:Lcom/lidroid/xutils/http/HttpHandler$State;

.field public static final enum LOADING:Lcom/lidroid/xutils/http/HttpHandler$State;

.field public static final enum STARTED:Lcom/lidroid/xutils/http/HttpHandler$State;

.field public static final enum SUCCESS:Lcom/lidroid/xutils/http/HttpHandler$State;

.field public static final enum WAITING:Lcom/lidroid/xutils/http/HttpHandler$State;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 313
    new-instance v0, Lcom/lidroid/xutils/http/HttpHandler$State;

    const/4 v1, 0x0

    const-string v2, "WAITING"

    invoke-direct {v0, v2, v1, v1}, Lcom/lidroid/xutils/http/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->WAITING:Lcom/lidroid/xutils/http/HttpHandler$State;

    new-instance v0, Lcom/lidroid/xutils/http/HttpHandler$State;

    const/4 v2, 0x1

    const-string v3, "STARTED"

    invoke-direct {v0, v3, v2, v2}, Lcom/lidroid/xutils/http/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->STARTED:Lcom/lidroid/xutils/http/HttpHandler$State;

    new-instance v0, Lcom/lidroid/xutils/http/HttpHandler$State;

    const/4 v3, 0x2

    const-string v4, "LOADING"

    invoke-direct {v0, v4, v3, v3}, Lcom/lidroid/xutils/http/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->LOADING:Lcom/lidroid/xutils/http/HttpHandler$State;

    new-instance v0, Lcom/lidroid/xutils/http/HttpHandler$State;

    const/4 v4, 0x3

    const-string v5, "FAILURE"

    invoke-direct {v0, v5, v4, v4}, Lcom/lidroid/xutils/http/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->FAILURE:Lcom/lidroid/xutils/http/HttpHandler$State;

    new-instance v0, Lcom/lidroid/xutils/http/HttpHandler$State;

    const/4 v5, 0x4

    const-string v6, "CANCELLED"

    invoke-direct {v0, v6, v5, v5}, Lcom/lidroid/xutils/http/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    new-instance v0, Lcom/lidroid/xutils/http/HttpHandler$State;

    const/4 v6, 0x5

    const-string v7, "SUCCESS"

    invoke-direct {v0, v7, v6, v6}, Lcom/lidroid/xutils/http/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->SUCCESS:Lcom/lidroid/xutils/http/HttpHandler$State;

    .line 312
    const/4 v7, 0x6

    new-array v7, v7, [Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v8, Lcom/lidroid/xutils/http/HttpHandler$State;->WAITING:Lcom/lidroid/xutils/http/HttpHandler$State;

    aput-object v8, v7, v1

    sget-object v1, Lcom/lidroid/xutils/http/HttpHandler$State;->STARTED:Lcom/lidroid/xutils/http/HttpHandler$State;

    aput-object v1, v7, v2

    sget-object v1, Lcom/lidroid/xutils/http/HttpHandler$State;->LOADING:Lcom/lidroid/xutils/http/HttpHandler$State;

    aput-object v1, v7, v3

    sget-object v1, Lcom/lidroid/xutils/http/HttpHandler$State;->FAILURE:Lcom/lidroid/xutils/http/HttpHandler$State;

    aput-object v1, v7, v4

    sget-object v1, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/lidroid/xutils/http/HttpHandler$State;->ENUM$VALUES:[Lcom/lidroid/xutils/http/HttpHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .line 316
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 314
    const/4 p1, 0x0

    iput p1, p0, Lcom/lidroid/xutils/http/HttpHandler$State;->value:I

    .line 317
    iput p3, p0, Lcom/lidroid/xutils/http/HttpHandler$State;->value:I

    .line 318
    return-void
.end method

.method public static valueOf(I)Lcom/lidroid/xutils/http/HttpHandler$State;
    .locals 1
    .param p0, "value"    # I

    .line 321
    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 335
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->FAILURE:Lcom/lidroid/xutils/http/HttpHandler$State;

    return-object v0

    .line 333
    :cond_0
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->SUCCESS:Lcom/lidroid/xutils/http/HttpHandler$State;

    return-object v0

    .line 331
    :cond_1
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    return-object v0

    .line 329
    :cond_2
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->FAILURE:Lcom/lidroid/xutils/http/HttpHandler$State;

    return-object v0

    .line 327
    :cond_3
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->LOADING:Lcom/lidroid/xutils/http/HttpHandler$State;

    return-object v0

    .line 325
    :cond_4
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->STARTED:Lcom/lidroid/xutils/http/HttpHandler$State;

    return-object v0

    .line 323
    :cond_5
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->WAITING:Lcom/lidroid/xutils/http/HttpHandler$State;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lidroid/xutils/http/HttpHandler$State;
    .locals 1

    .line 1
    const-class v0, Lcom/lidroid/xutils/http/HttpHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lidroid/xutils/http/HttpHandler$State;

    return-object p0
.end method

.method public static values()[Lcom/lidroid/xutils/http/HttpHandler$State;
    .locals 4

    .line 1
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->ENUM$VALUES:[Lcom/lidroid/xutils/http/HttpHandler$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/lidroid/xutils/http/HttpHandler$State;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 340
    iget v0, p0, Lcom/lidroid/xutils/http/HttpHandler$State;->value:I

    return v0
.end method
