.class Lde/greenrobot/event/SubscriberMethodFinder;
.super Ljava/lang/Object;
.source "SubscriberMethodFinder.java"


# static fields
.field private static final BRIDGE:I = 0x40

.field private static final MODIFIERS_IGNORE:I = 0x1448

.field private static final ON_EVENT_METHOD_NAME:Ljava/lang/String; = "onEvent"

.field private static final SYNTHETIC:I = 0x1000

.field private static final methodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lde/greenrobot/event/SubscriberMethod;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final skipMethodVerificationForClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 44
    .local p1, "skipMethodVerificationForClassesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodVerificationForClasses:Ljava/util/Map;

    .line 46
    if-eqz p1, :cond_1

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 48
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodVerificationForClasses:Ljava/util/Map;

    invoke-interface {v2, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 51
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    return-void
.end method

.method static clearCaches()V
    .locals 2

    .line 157
    sget-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    monitor-enter v0

    .line 158
    :try_start_0
    sget-object v1, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 157
    monitor-exit v0

    .line 160
    return-void

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private filterSubscriberMethods(Ljava/util/List;Ljava/util/HashMap;Ljava/lang/StringBuilder;[Ljava/lang/reflect/Method;)V
    .locals 17
    .param p3, "methodKeyBuilder"    # Ljava/lang/StringBuilder;
    .param p4, "methods"    # [Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lde/greenrobot/event/SubscriberMethod;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "[",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 101
    .local p1, "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    .local p2, "eventTypesFound":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Class;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v4, :cond_0

    .line 133
    return-void

    .line 101
    :cond_0
    aget-object v7, v3, v6

    .line 102
    .local v7, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, "methodName":Ljava/lang/String;
    const-string v9, "onEvent"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 104
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    .line 105
    .local v9, "modifiers":I
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    .line 106
    .local v10, "methodClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    and-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_5

    and-int/lit16 v11, v9, 0x1448

    if-nez v11, :cond_5

    .line 107
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 108
    .local v11, "parameterTypes":[Ljava/lang/Class;
    array-length v12, v11

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    .line 109
    invoke-direct {v0, v10, v7, v8}, Lde/greenrobot/event/SubscriberMethodFinder;->getThreadMode(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/String;)Lde/greenrobot/event/ThreadMode;

    move-result-object v12

    .line 110
    .local v12, "threadMode":Lde/greenrobot/event/ThreadMode;
    if-nez v12, :cond_1

    .line 111
    move-object/from16 v1, p1

    goto :goto_2

    .line 113
    :cond_1
    aget-object v13, v11, v5

    .line 114
    .local v13, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 115
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const/16 v14, 0x3e

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 118
    .local v14, "methodKey":Ljava/lang/String;
    invoke-virtual {v1, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Class;

    .line 119
    .local v15, "methodClassOld":Ljava/lang/Class;
    if-eqz v15, :cond_3

    invoke-virtual {v15, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v16

    if-eqz v16, :cond_2

    goto :goto_1

    .line 124
    :cond_2
    invoke-virtual {v1, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .end local v11    # "parameterTypes":[Ljava/lang/Class;
    .end local v12    # "threadMode":Lde/greenrobot/event/ThreadMode;
    .end local v13    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "methodKey":Ljava/lang/String;
    .end local v15    # "methodClassOld":Ljava/lang/Class;
    move-object/from16 v1, p1

    goto :goto_2

    .line 121
    .restart local v11    # "parameterTypes":[Ljava/lang/Class;
    .restart local v12    # "threadMode":Lde/greenrobot/event/ThreadMode;
    .restart local v13    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "methodKey":Ljava/lang/String;
    .restart local v15    # "methodClassOld":Ljava/lang/Class;
    :cond_3
    :goto_1
    new-instance v5, Lde/greenrobot/event/SubscriberMethod;

    invoke-direct {v5, v7, v12, v13}, Lde/greenrobot/event/SubscriberMethod;-><init>(Ljava/lang/reflect/Method;Lde/greenrobot/event/ThreadMode;Ljava/lang/Class;)V

    move-object/from16 v1, p1

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    goto :goto_2

    .line 108
    .end local v12    # "threadMode":Lde/greenrobot/event/ThreadMode;
    .end local v13    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "methodKey":Ljava/lang/String;
    .end local v15    # "methodClassOld":Ljava/lang/Class;
    :cond_4
    move-object/from16 v1, p1

    goto :goto_2

    .line 106
    .end local v11    # "parameterTypes":[Ljava/lang/Class;
    :cond_5
    move-object/from16 v1, p1

    .line 127
    iget-object v5, v0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodVerificationForClasses:Ljava/util/Map;

    invoke-interface {v5, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 128
    sget-object v5, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Skipping method (not public, static or abstract): "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 128
    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 103
    .end local v9    # "modifiers":I
    .end local v10    # "methodClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    move-object/from16 v1, p1

    .line 101
    .end local v7    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "methodName":Ljava/lang/String;
    :cond_7
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p2

    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private getThreadMode(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/String;)Lde/greenrobot/event/ThreadMode;
    .locals 4
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/event/ThreadMode;"
        }
    .end annotation

    .line 136
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "onEvent"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "modifierString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 139
    sget-object v1, Lde/greenrobot/event/ThreadMode;->PostThread:Lde/greenrobot/event/ThreadMode;

    .line 140
    .local v1, "threadMode":Lde/greenrobot/event/ThreadMode;
    goto :goto_0

    .end local v1    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_0
    const-string v1, "MainThread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    sget-object v1, Lde/greenrobot/event/ThreadMode;->MainThread:Lde/greenrobot/event/ThreadMode;

    .line 142
    .restart local v1    # "threadMode":Lde/greenrobot/event/ThreadMode;
    goto :goto_0

    .end local v1    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_1
    const-string v1, "BackgroundThread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    sget-object v1, Lde/greenrobot/event/ThreadMode;->BackgroundThread:Lde/greenrobot/event/ThreadMode;

    .line 144
    .restart local v1    # "threadMode":Lde/greenrobot/event/ThreadMode;
    goto :goto_0

    .end local v1    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_2
    const-string v1, "Async"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    sget-object v1, Lde/greenrobot/event/ThreadMode;->Async:Lde/greenrobot/event/ThreadMode;

    .line 146
    .restart local v1    # "threadMode":Lde/greenrobot/event/ThreadMode;
    goto :goto_0

    .line 147
    .end local v1    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_3
    iget-object v1, p0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodVerificationForClasses:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    const/4 v1, 0x0

    .line 153
    .restart local v1    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :goto_0
    return-object v1

    .line 148
    .end local v1    # "threadMode":Lde/greenrobot/event/ThreadMode;
    :cond_4
    new-instance v1, Lde/greenrobot/event/EventBusException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal onEvent method, check for typos: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method findSubscriberMethods(Ljava/lang/Class;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lde/greenrobot/event/SubscriberMethod;",
            ">;"
        }
    .end annotation

    .line 55
    .local p1, "subscriberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 55
    .local v1, "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 58
    if-eqz v1, :cond_0

    .line 59
    return-object v1

    .line 61
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .end local v1    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    .local v0, "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    move-object v1, p1

    .line 63
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v2, "eventTypesFound":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Class;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v3, "methodKeyBuilder":Ljava/lang/StringBuilder;
    nop

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "name":Ljava/lang/String;
    const-string v5, "java."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "javax."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    goto :goto_1

    .line 75
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 76
    .local v5, "methods":[Ljava/lang/reflect/Method;
    invoke-direct {p0, v0, v2, v3, v5}, Lde/greenrobot/event/SubscriberMethodFinder;->filterSubscriberMethods(Ljava/util/List;Ljava/util/HashMap;Ljava/lang/StringBuilder;[Ljava/lang/reflect/Method;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    nop

    .line 85
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v5

    .line 79
    .local v5, "th":Ljava/lang/Throwable;
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 80
    .local v6, "methods":[Ljava/lang/reflect/Method;
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 82
    invoke-direct {p0, v0, v2, v3, v6}, Lde/greenrobot/event/SubscriberMethodFinder;->filterSubscriberMethods(Ljava/util/List;Ljava/util/HashMap;Ljava/lang/StringBuilder;[Ljava/lang/reflect/Method;)V

    .line 87
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "th":Ljava/lang/Throwable;
    .end local v6    # "methods":[Ljava/lang/reflect/Method;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 91
    sget-object v4, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    monitor-enter v4

    .line 92
    :try_start_2
    sget-object v5, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;

    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    monitor-exit v4

    .line 94
    return-object v0

    .line 91
    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 88
    :cond_4
    new-instance v4, Lde/greenrobot/event/EventBusException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Subscriber "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has no public methods called "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v6, "onEvent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-direct {v4, v5}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 55
    .end local v0    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "eventTypesFound":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Class;>;"
    .end local v3    # "methodKeyBuilder":Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
