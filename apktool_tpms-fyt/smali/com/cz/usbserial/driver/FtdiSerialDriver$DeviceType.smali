.class final enum Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;
.super Ljava/lang/Enum;
.source "FtdiSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cz/usbserial/driver/FtdiSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

.field public static final enum TYPE_2232C:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

.field public static final enum TYPE_2232H:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

.field public static final enum TYPE_4232H:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

.field public static final enum TYPE_AM:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

.field public static final enum TYPE_BM:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

.field public static final enum TYPE_R:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 107
    new-instance v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    const/4 v1, 0x0

    const-string v2, "TYPE_BM"

    invoke-direct {v0, v2, v1}, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_BM:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    new-instance v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    const/4 v2, 0x1

    const-string v3, "TYPE_AM"

    invoke-direct {v0, v3, v2}, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_AM:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    new-instance v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    const/4 v3, 0x2

    const-string v4, "TYPE_2232C"

    invoke-direct {v0, v4, v3}, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_2232C:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    new-instance v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    const/4 v4, 0x3

    const-string v5, "TYPE_R"

    invoke-direct {v0, v5, v4}, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_R:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    new-instance v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    const/4 v5, 0x4

    const-string v6, "TYPE_2232H"

    invoke-direct {v0, v6, v5}, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_2232H:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    new-instance v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    const/4 v6, 0x5

    const-string v7, "TYPE_4232H"

    invoke-direct {v0, v7, v6}, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_4232H:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    .line 106
    const/4 v7, 0x6

    new-array v7, v7, [Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    sget-object v8, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_BM:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    aput-object v8, v7, v1

    sget-object v1, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_AM:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    aput-object v1, v7, v2

    sget-object v1, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_2232C:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    aput-object v1, v7, v3

    sget-object v1, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_R:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    aput-object v1, v7, v4

    sget-object v1, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;->TYPE_2232H:Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;->ENUM$VALUES:[Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;
    .locals 1

    .line 1
    const-class v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;
    .locals 4

    .line 1
    sget-object v0, Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;->ENUM$VALUES:[Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    array-length v1, v0

    new-array v2, v1, [Lcom/cz/usbserial/driver/FtdiSerialDriver$DeviceType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
