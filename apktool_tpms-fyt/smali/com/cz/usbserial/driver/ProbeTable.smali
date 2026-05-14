.class public Lcom/cz/usbserial/driver/ProbeTable;
.super Ljava/lang/Object;
.source "ProbeTable.java"


# instance fields
.field private final mProbeTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cz/usbserial/driver/UsbSerialDriver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/cz/usbserial/driver/ProbeTable;->mProbeTable:Ljava/util/Map;

    .line 36
    return-void
.end method


# virtual methods
.method addDriver(Ljava/lang/Class;)Lcom/cz/usbserial/driver/ProbeTable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cz/usbserial/driver/UsbSerialDriver;",
            ">;)",
            "Lcom/cz/usbserial/driver/ProbeTable;"
        }
    .end annotation

    .line 69
    .local p1, "driverClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/cz/usbserial/driver/UsbSerialDriver;>;"
    :try_start_0
    const-string v0, "getSupportedDevices"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 70
    .local v0, "method":Ljava/lang/reflect/Method;
    nop

    .line 78
    const/4 v2, 0x0

    :try_start_1
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    .local v2, "devices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    nop

    .line 87
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    return-object p0

    .line 87
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 88
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[I>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 89
    .local v5, "vendorId":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v7, :cond_1

    goto :goto_0

    :cond_1
    aget v9, v6, v8

    .line 90
    .local v9, "productId":I
    invoke-virtual {p0, v5, v9, p1}, Lcom/cz/usbserial/driver/ProbeTable;->addProduct(IILjava/lang/Class;)Lcom/cz/usbserial/driver/ProbeTable;

    .line 89
    .end local v9    # "productId":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 83
    .end local v2    # "devices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[I>;"
    .end local v5    # "vendorId":I
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 81
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 79
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 72
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 70
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public addProduct(IILjava/lang/Class;)Lcom/cz/usbserial/driver/ProbeTable;
    .locals 3
    .param p1, "vendorId"    # I
    .param p2, "productId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cz/usbserial/driver/UsbSerialDriver;",
            ">;)",
            "Lcom/cz/usbserial/driver/ProbeTable;"
        }
    .end annotation

    .line 53
    .local p3, "driverClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/cz/usbserial/driver/UsbSerialDriver;>;"
    iget-object v0, p0, Lcom/cz/usbserial/driver/ProbeTable;->mProbeTable:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-object p0
.end method

.method public findDriver(II)Ljava/lang/Class;
    .locals 2
    .param p1, "vendorId"    # I
    .param p2, "productId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cz/usbserial/driver/UsbSerialDriver;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 110
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/cz/usbserial/driver/ProbeTable;->mProbeTable:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    return-object v1
.end method
