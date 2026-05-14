.class public Lcom/std/dev/BaseWrap;
.super Ljava/lang/Object;
.source "BaseWrap.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseWrap"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static varargs runRelMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "paramsClass"    # [Ljava/lang/Class;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    .line 18
    .local v0, "tmp":Ljava/lang/Object;, "TT;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 19
    .local v1, "stacktrace":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x3

    aget-object v2, v1, v2

    .line 20
    .local v2, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "methodName":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 24
    .local v4, "cls":Ljava/lang/Class;
    const-string v5, "BaseWrap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "class name is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tpms/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    if-eqz v4, :cond_0

    .line 39
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {v4, v3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 41
    .local v6, "method":Ljava/lang/reflect/Method;
    if-eqz v6, :cond_0

    .line 42
    invoke-virtual {v6, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    .line 43
    return-object v0

    .line 48
    .end local v4    # "cls":Ljava/lang/Class;
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_0

    .line 46
    :catch_0
    move-exception v4

    .line 47
    .local v4, "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method
