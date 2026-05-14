.class public Lcom/lidroid/xutils/view/EventListenerManager;
.super Ljava/lang/Object;
.source "EventListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;
    }
.end annotation


# static fields
.field private static final listenerCache:Lcom/lidroid/xutils/util/DoubleKeyValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/util/DoubleKeyValueMap<",
            "Lcom/lidroid/xutils/view/ViewInjectInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/lidroid/xutils/util/DoubleKeyValueMap;

    invoke-direct {v0}, Lcom/lidroid/xutils/util/DoubleKeyValueMap;-><init>()V

    .line 40
    sput-object v0, Lcom/lidroid/xutils/view/EventListenerManager;->listenerCache:Lcom/lidroid/xutils/util/DoubleKeyValueMap;

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static addEventMethod(Lcom/lidroid/xutils/view/ViewFinder;Lcom/lidroid/xutils/view/ViewInjectInfo;Ljava/lang/annotation/Annotation;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 15
    .param p0, "finder"    # Lcom/lidroid/xutils/view/ViewFinder;
    .param p1, "info"    # Lcom/lidroid/xutils/view/ViewInjectInfo;
    .param p2, "eventAnnotation"    # Ljava/lang/annotation/Annotation;
    .param p3, "handler"    # Ljava/lang/Object;
    .param p4, "method"    # Ljava/lang/reflect/Method;

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 50
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/lidroid/xutils/view/ViewFinder;->findViewByInfo(Lcom/lidroid/xutils/view/ViewInjectInfo;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 52
    invoke-interface/range {p2 .. p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/lidroid/xutils/view/annotation/event/EventBase;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/lidroid/xutils/view/annotation/event/EventBase;

    .line 53
    .local v4, "eventBase":Lcom/lidroid/xutils/view/annotation/event/EventBase;
    invoke-interface {v4}, Lcom/lidroid/xutils/view/annotation/event/EventBase;->listenerType()Ljava/lang/Class;

    move-result-object v5

    .line 54
    .local v5, "listenerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v4}, Lcom/lidroid/xutils/view/annotation/event/EventBase;->listenerSetter()Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, "listenerSetter":Ljava/lang/String;
    invoke-interface {v4}, Lcom/lidroid/xutils/view/annotation/event/EventBase;->methodName()Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "methodName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 58
    .local v8, "addNewMethod":Z
    sget-object v9, Lcom/lidroid/xutils/view/EventListenerManager;->listenerCache:Lcom/lidroid/xutils/util/DoubleKeyValueMap;

    invoke-virtual {v9, v1, v5}, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 59
    .local v9, "listener":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 60
    .local v10, "dynamicHandler":Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;
    if-eqz v9, :cond_0

    .line 61
    invoke-static {v9}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v11

    check-cast v11, Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;

    move-object v10, v11

    .line 62
    invoke-virtual {v10}, Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;->getHandler()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    move v8, v11

    .line 63
    if-eqz v8, :cond_0

    .line 64
    invoke-virtual {v10, v7, v3}, Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;->addMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 67
    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v8, :cond_1

    .line 68
    new-instance v13, Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;

    invoke-direct {v13, v2}, Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;-><init>(Ljava/lang/Object;)V

    move-object v10, v13

    .line 69
    invoke-virtual {v10, v7, v3}, Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;->addMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 71
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    .line 72
    new-array v14, v12, [Ljava/lang/Class;

    aput-object v5, v14, v11

    .line 73
    nop

    .line 70
    invoke-static {v13, v14, v10}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v13

    move-object v9, v13

    .line 75
    sget-object v13, Lcom/lidroid/xutils/view/EventListenerManager;->listenerCache:Lcom/lidroid/xutils/util/DoubleKeyValueMap;

    invoke-virtual {v13, v1, v5, v9}, Lcom/lidroid/xutils/util/DoubleKeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    new-array v14, v12, [Ljava/lang/Class;

    aput-object v5, v14, v11

    invoke-virtual {v13, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 79
    .local v13, "setEventListenerMethod":Ljava/lang/reflect/Method;
    new-array v12, v12, [Ljava/lang/Object;

    aput-object v9, v12, v11

    invoke-virtual {v13, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    nop

    .end local v0    # "view":Landroid/view/View;
    .end local v4    # "eventBase":Lcom/lidroid/xutils/view/annotation/event/EventBase;
    .end local v5    # "listenerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "listenerSetter":Ljava/lang/String;
    .end local v7    # "methodName":Ljava/lang/String;
    .end local v8    # "addNewMethod":Z
    .end local v9    # "listener":Ljava/lang/Object;
    .end local v10    # "dynamicHandler":Lcom/lidroid/xutils/view/EventListenerManager$DynamicHandler;
    .end local v13    # "setEventListenerMethod":Ljava/lang/reflect/Method;
    goto :goto_0

    :catchall_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    return-void
.end method
