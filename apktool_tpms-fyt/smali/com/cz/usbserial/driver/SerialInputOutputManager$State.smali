.class final enum Lcom/cz/usbserial/driver/SerialInputOutputManager$State;
.super Ljava/lang/Enum;
.source "SerialInputOutputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cz/usbserial/driver/SerialInputOutputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cz/usbserial/driver/SerialInputOutputManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

.field public static final enum RUNNING:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

.field public static final enum STOPPED:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

.field public static final enum STOPPING:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 54
    new-instance v0, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    const/4 v1, 0x0

    const-string v2, "STOPPED"

    invoke-direct {v0, v2, v1}, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;->STOPPED:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    new-instance v0, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;->RUNNING:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    new-instance v0, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    const/4 v3, 0x2

    const-string v4, "STOPPING"

    invoke-direct {v0, v4, v3}, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;->STOPPING:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    .line 53
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    sget-object v5, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;->STOPPED:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    aput-object v5, v4, v1

    sget-object v1, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;->RUNNING:Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;->ENUM$VALUES:[Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cz/usbserial/driver/SerialInputOutputManager$State;
    .locals 1

    .line 1
    const-class v0, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    return-object p0
.end method

.method public static values()[Lcom/cz/usbserial/driver/SerialInputOutputManager$State;
    .locals 4

    .line 1
    sget-object v0, Lcom/cz/usbserial/driver/SerialInputOutputManager$State;->ENUM$VALUES:[Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/cz/usbserial/driver/SerialInputOutputManager$State;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
