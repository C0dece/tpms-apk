.class public Lcom/std/dev/OsWrap;
.super Lcom/std/dev/BaseWrap;
.source "OsWrap.java"


# static fields
.field private static mPackName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "android.system.Os"

    sput-object v0, Lcom/std/dev/OsWrap;->mPackName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/std/dev/BaseWrap;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/FileDescriptor;)V
    .locals 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 19
    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 20
    .local v1, "paramsClass":[Ljava/lang/Class;
    sget-object v2, Lcom/std/dev/OsWrap;->mPackName:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v2, v4, v1, v0}, Lcom/std/dev/OsWrap;->runRelMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    nop

    .end local v1    # "paramsClass":[Ljava/lang/Class;
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
