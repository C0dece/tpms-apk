.class public Lde/greenrobot/event/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/event/EventBus$PostCallback;,
        Lde/greenrobot/event/EventBus$PostingThreadState;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$de$greenrobot$event$ThreadMode:[I

.field private static final DEFAULT_BUILDER:Lde/greenrobot/event/EventBusBuilder;

.field public static TAG:Ljava/lang/String;

.field static volatile defaultInstance:Lde/greenrobot/event/EventBus;

.field private static final eventTypesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final asyncPoster:Lde/greenrobot/event/AsyncPoster;

.field private final backgroundPoster:Lde/greenrobot/event/BackgroundPoster;

.field private final currentPostingThreadState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lde/greenrobot/event/EventBus$PostingThreadState;",
            ">;"
        }
    .end annotation
.end field

.field private final eventInheritance:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final logNoSubscriberMessages:Z

.field private final logSubscriberExceptions:Z

.field private final mainThreadPoster:Lde/greenrobot/event/HandlerPoster;

.field private final sendNoSubscriberEvent:Z

.field private final sendSubscriberExceptionEvent:Z

.field private final stickyEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final subscriberMethodFinder:Lde/greenrobot/event/SubscriberMethodFinder;

.field private final subscriptionsByEventType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lde/greenrobot/event/Subscription;",
            ">;>;"
        }
    .end annotation
.end field

.field private final throwSubscriberException:Z

.field private final typesBySubscriber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$de$greenrobot$event$ThreadMode()[I
    .locals 3

    .line 40
    sget-object v0, Lde/greenrobot/event/EventBus;->$SWITCH_TABLE$de$greenrobot$event$ThreadMode:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lde/greenrobot/event/ThreadMode;->values()[Lde/greenrobot/event/ThreadMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lde/greenrobot/event/ThreadMode;->Async:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    sget-object v1, Lde/greenrobot/event/ThreadMode;->BackgroundThread:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    :try_start_2
    sget-object v1, Lde/greenrobot/event/ThreadMode;->MainThread:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    :try_start_3
    sget-object v1, Lde/greenrobot/event/ThreadMode;->PostThread:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_3
    sput-object v0, Lde/greenrobot/event/EventBus;->$SWITCH_TABLE$de$greenrobot$event$ThreadMode:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "Event"

    sput-object v0, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Lde/greenrobot/event/EventBusBuilder;

    invoke-direct {v0}, Lde/greenrobot/event/EventBusBuilder;-><init>()V

    sput-object v0, Lde/greenrobot/event/EventBus;->DEFAULT_BUILDER:Lde/greenrobot/event/EventBusBuilder;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 102
    sget-object v0, Lde/greenrobot/event/EventBus;->DEFAULT_BUILDER:Lde/greenrobot/event/EventBusBuilder;

    invoke-direct {p0, v0}, Lde/greenrobot/event/EventBus;-><init>(Lde/greenrobot/event/EventBusBuilder;)V

    .line 103
    return-void
.end method

.method constructor <init>(Lde/greenrobot/event/EventBusBuilder;)V
    .locals 3
    .param p1, "builder"    # Lde/greenrobot/event/EventBusBuilder;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lde/greenrobot/event/EventBus$1;

    invoke-direct {v0, p0}, Lde/greenrobot/event/EventBus$1;-><init>(Lde/greenrobot/event/EventBus;)V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    .line 109
    new-instance v0, Lde/greenrobot/event/HandlerPoster;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, p0, v1, v2}, Lde/greenrobot/event/HandlerPoster;-><init>(Lde/greenrobot/event/EventBus;Landroid/os/Looper;I)V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->mainThreadPoster:Lde/greenrobot/event/HandlerPoster;

    .line 110
    new-instance v0, Lde/greenrobot/event/BackgroundPoster;

    invoke-direct {v0, p0}, Lde/greenrobot/event/BackgroundPoster;-><init>(Lde/greenrobot/event/EventBus;)V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->backgroundPoster:Lde/greenrobot/event/BackgroundPoster;

    .line 111
    new-instance v0, Lde/greenrobot/event/AsyncPoster;

    invoke-direct {v0, p0}, Lde/greenrobot/event/AsyncPoster;-><init>(Lde/greenrobot/event/EventBus;)V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->asyncPoster:Lde/greenrobot/event/AsyncPoster;

    .line 112
    new-instance v0, Lde/greenrobot/event/SubscriberMethodFinder;

    iget-object v1, p1, Lde/greenrobot/event/EventBusBuilder;->skipMethodVerificationForClasses:Ljava/util/List;

    invoke-direct {v0, v1}, Lde/greenrobot/event/SubscriberMethodFinder;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->subscriberMethodFinder:Lde/greenrobot/event/SubscriberMethodFinder;

    .line 113
    iget-boolean v0, p1, Lde/greenrobot/event/EventBusBuilder;->logSubscriberExceptions:Z

    iput-boolean v0, p0, Lde/greenrobot/event/EventBus;->logSubscriberExceptions:Z

    .line 114
    iget-boolean v0, p1, Lde/greenrobot/event/EventBusBuilder;->logNoSubscriberMessages:Z

    iput-boolean v0, p0, Lde/greenrobot/event/EventBus;->logNoSubscriberMessages:Z

    .line 115
    iget-boolean v0, p1, Lde/greenrobot/event/EventBusBuilder;->sendSubscriberExceptionEvent:Z

    iput-boolean v0, p0, Lde/greenrobot/event/EventBus;->sendSubscriberExceptionEvent:Z

    .line 116
    iget-boolean v0, p1, Lde/greenrobot/event/EventBusBuilder;->sendNoSubscriberEvent:Z

    iput-boolean v0, p0, Lde/greenrobot/event/EventBus;->sendNoSubscriberEvent:Z

    .line 117
    iget-boolean v0, p1, Lde/greenrobot/event/EventBusBuilder;->throwSubscriberException:Z

    iput-boolean v0, p0, Lde/greenrobot/event/EventBus;->throwSubscriberException:Z

    .line 118
    iget-boolean v0, p1, Lde/greenrobot/event/EventBusBuilder;->eventInheritance:Z

    iput-boolean v0, p0, Lde/greenrobot/event/EventBus;->eventInheritance:Z

    .line 119
    iget-object v0, p1, Lde/greenrobot/event/EventBusBuilder;->executorService:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lde/greenrobot/event/EventBus;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 120
    return-void
.end method

.method static addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V
    .locals 4
    .param p1, "interfaces"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 490
    .local p0, "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    .line 496
    return-void

    .line 490
    :cond_0
    aget-object v2, p1, v1

    .line 491
    .local v2, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 492
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lde/greenrobot/event/EventBus;->addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V

    .line 490
    .end local v2    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static builder()Lde/greenrobot/event/EventBusBuilder;
    .locals 1

    .line 88
    new-instance v0, Lde/greenrobot/event/EventBusBuilder;

    invoke-direct {v0}, Lde/greenrobot/event/EventBusBuilder;-><init>()V

    return-object v0
.end method

.method private checkPostStickyEventToSubscription(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
    .locals 2
    .param p1, "newSubscription"    # Lde/greenrobot/event/Subscription;
    .param p2, "stickyEvent"    # Ljava/lang/Object;

    .line 225
    if-eqz p2, :cond_1

    .line 228
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lde/greenrobot/event/EventBus;->postToSubscription(Lde/greenrobot/event/Subscription;Ljava/lang/Object;Z)V

    .line 230
    :cond_1
    return-void
.end method

.method public static clearCaches()V
    .locals 1

    .line 93
    invoke-static {}, Lde/greenrobot/event/SubscriberMethodFinder;->clearCaches()V

    .line 94
    sget-object v0, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 95
    return-void
.end method

.method public static getDefault()Lde/greenrobot/event/EventBus;
    .locals 2

    .line 77
    sget-object v0, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;

    if-nez v0, :cond_1

    .line 78
    const-class v0, Lde/greenrobot/event/EventBus;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lde/greenrobot/event/EventBus;

    invoke-direct {v1}, Lde/greenrobot/event/EventBus;-><init>()V

    sput-object v1, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;

    .line 78
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 84
    :cond_1
    :goto_0
    sget-object v0, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;

    return-object v0
.end method

.method private handleSubscriberException(Lde/greenrobot/event/Subscription;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "subscription"    # Lde/greenrobot/event/Subscription;
    .param p2, "event"    # Ljava/lang/Object;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 524
    instance-of v0, p2, Lde/greenrobot/event/SubscriberExceptionEvent;

    if-eqz v0, :cond_0

    .line 525
    iget-boolean v0, p0, Lde/greenrobot/event/EventBus;->logSubscriberExceptions:Z

    if-eqz v0, :cond_2

    .line 527
    sget-object v0, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SubscriberExceptionEvent subscriber "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 528
    const-string v2, " threw an exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    move-object v0, p2

    check-cast v0, Lde/greenrobot/event/SubscriberExceptionEvent;

    .line 530
    .local v0, "exEvent":Lde/greenrobot/event/SubscriberExceptionEvent;
    sget-object v1, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Initial event "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lde/greenrobot/event/SubscriberExceptionEvent;->causingEvent:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " caused exception in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    iget-object v3, v0, Lde/greenrobot/event/SubscriberExceptionEvent;->causingSubscriber:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lde/greenrobot/event/SubscriberExceptionEvent;->throwable:Ljava/lang/Throwable;

    .line 530
    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    .end local v0    # "exEvent":Lde/greenrobot/event/SubscriberExceptionEvent;
    goto :goto_0

    .line 534
    :cond_0
    iget-boolean v0, p0, Lde/greenrobot/event/EventBus;->throwSubscriberException:Z

    if-nez v0, :cond_3

    .line 537
    iget-boolean v0, p0, Lde/greenrobot/event/EventBus;->logSubscriberExceptions:Z

    if-eqz v0, :cond_1

    .line 538
    sget-object v0, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not dispatch event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to subscribing class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    iget-object v2, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 538
    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    :cond_1
    iget-boolean v0, p0, Lde/greenrobot/event/EventBus;->sendSubscriberExceptionEvent:Z

    if-eqz v0, :cond_2

    .line 542
    new-instance v0, Lde/greenrobot/event/SubscriberExceptionEvent;

    .line 543
    iget-object v1, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    .line 542
    invoke-direct {v0, p0, p3, p2, v1}, Lde/greenrobot/event/SubscriberExceptionEvent;-><init>(Lde/greenrobot/event/EventBus;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 544
    .restart local v0    # "exEvent":Lde/greenrobot/event/SubscriberExceptionEvent;
    invoke-virtual {p0, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 547
    .end local v0    # "exEvent":Lde/greenrobot/event/SubscriberExceptionEvent;
    :cond_2
    :goto_0
    return-void

    .line 535
    :cond_3
    new-instance v0, Lde/greenrobot/event/EventBusException;

    const-string v1, "Invoking subscriber failed"

    invoke-direct {v0, v1, p3}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private lookupAllEventTypes(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 472
    .local p1, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;

    monitor-enter v0

    .line 473
    :try_start_0
    sget-object v1, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 474
    .local v1, "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-nez v1, :cond_1

    .line 475
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 476
    move-object v2, p1

    .line 477
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    :goto_0
    if-nez v2, :cond_0

    .line 482
    sget-object v3, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 478
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v3}, Lde/greenrobot/event/EventBus;->addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V

    .line 480
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 484
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    monitor-exit v0

    return-object v1

    .line 472
    .end local v1    # "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private postSingleEvent(Ljava/lang/Object;Lde/greenrobot/event/EventBus$PostingThreadState;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "postingState"    # Lde/greenrobot/event/EventBus$PostingThreadState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .line 393
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 394
    .local v0, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 395
    .local v1, "subscriptionFound":Z
    iget-boolean v2, p0, Lde/greenrobot/event/EventBus;->eventInheritance:Z

    if-eqz v2, :cond_1

    .line 396
    invoke-direct {p0, v0}, Lde/greenrobot/event/EventBus;->lookupAllEventTypes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 397
    .local v2, "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 398
    .local v3, "countTypes":I
    const/4 v4, 0x0

    .local v4, "h":I
    :goto_0
    if-lt v4, v3, :cond_0

    .line 402
    .end local v2    # "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v3    # "countTypes":I
    .end local v4    # "h":I
    goto :goto_1

    .line 399
    .restart local v2    # "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .restart local v3    # "countTypes":I
    .restart local v4    # "h":I
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 400
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, v5}, Lde/greenrobot/event/EventBus;->postSingleEventForEventType(Ljava/lang/Object;Lde/greenrobot/event/EventBus$PostingThreadState;Ljava/lang/Class;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 398
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 403
    .end local v2    # "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v3    # "countTypes":I
    .end local v4    # "h":I
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lde/greenrobot/event/EventBus;->postSingleEventForEventType(Ljava/lang/Object;Lde/greenrobot/event/EventBus$PostingThreadState;Ljava/lang/Class;)Z

    move-result v1

    .line 405
    :goto_1
    if-nez v1, :cond_3

    .line 406
    iget-boolean v2, p0, Lde/greenrobot/event/EventBus;->logNoSubscriberMessages:Z

    if-eqz v2, :cond_2

    .line 407
    sget-object v2, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No subscribers registered for event "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_2
    iget-boolean v2, p0, Lde/greenrobot/event/EventBus;->sendNoSubscriberEvent:Z

    if-eqz v2, :cond_3

    const-class v2, Lde/greenrobot/event/NoSubscriberEvent;

    if-eq v0, v2, :cond_3

    .line 410
    const-class v2, Lde/greenrobot/event/SubscriberExceptionEvent;

    if-eq v0, v2, :cond_3

    .line 411
    new-instance v2, Lde/greenrobot/event/NoSubscriberEvent;

    invoke-direct {v2, p0, p1}, Lde/greenrobot/event/NoSubscriberEvent;-><init>(Lde/greenrobot/event/EventBus;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 414
    :cond_3
    return-void
.end method

.method private postSingleEventForEventType(Ljava/lang/Object;Lde/greenrobot/event/EventBus$PostingThreadState;Ljava/lang/Class;)Z
    .locals 7
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "postingState"    # Lde/greenrobot/event/EventBus$PostingThreadState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lde/greenrobot/event/EventBus$PostingThreadState;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 418
    .local p3, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 419
    :try_start_0
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 418
    .local v0, "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 421
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 422
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/greenrobot/event/Subscription;

    .line 423
    .local v3, "subscription":Lde/greenrobot/event/Subscription;
    iput-object p1, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    .line 424
    iput-object v3, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->subscription:Lde/greenrobot/event/Subscription;

    .line 425
    const/4 v4, 0x0

    .line 427
    .local v4, "aborted":Z
    const/4 v5, 0x0

    :try_start_1
    iget-boolean v6, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->isMainThread:Z

    invoke-direct {p0, v3, p1, v6}, Lde/greenrobot/event/EventBus;->postToSubscription(Lde/greenrobot/event/Subscription;Ljava/lang/Object;Z)V

    .line 428
    iget-boolean v6, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->canceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v6

    .line 429
    nop

    .line 430
    iput-object v5, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    .line 431
    iput-object v5, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->subscription:Lde/greenrobot/event/Subscription;

    .line 432
    iput-boolean v1, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->canceled:Z

    .line 434
    if-eqz v4, :cond_0

    .line 435
    nop

    .line 438
    .end local v3    # "subscription":Lde/greenrobot/event/Subscription;
    .end local v4    # "aborted":Z
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 429
    .restart local v3    # "subscription":Lde/greenrobot/event/Subscription;
    .restart local v4    # "aborted":Z
    :catchall_0
    move-exception v2

    .line 430
    iput-object v5, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    .line 431
    iput-object v5, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->subscription:Lde/greenrobot/event/Subscription;

    .line 432
    iput-boolean v1, p2, Lde/greenrobot/event/EventBus$PostingThreadState;->canceled:Z

    .line 433
    throw v2

    .line 440
    .end local v3    # "subscription":Lde/greenrobot/event/Subscription;
    .end local v4    # "aborted":Z
    :cond_2
    return v1

    .line 418
    .end local v0    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private postToSubscription(Lde/greenrobot/event/Subscription;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "subscription"    # Lde/greenrobot/event/Subscription;
    .param p2, "event"    # Ljava/lang/Object;
    .param p3, "isMainThread"    # Z

    .line 444
    invoke-static {}, Lde/greenrobot/event/EventBus;->$SWITCH_TABLE$de$greenrobot$event$ThreadMode()[I

    move-result-object v0

    iget-object v1, p1, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;

    iget-object v1, v1, Lde/greenrobot/event/SubscriberMethod;->threadMode:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 463
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->asyncPoster:Lde/greenrobot/event/AsyncPoster;

    invoke-virtual {v0, p1, p2}, Lde/greenrobot/event/AsyncPoster;->enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    .line 464
    goto :goto_0

    .line 466
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown thread mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;

    iget-object v2, v2, Lde/greenrobot/event/SubscriberMethod;->threadMode:Lde/greenrobot/event/ThreadMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_1
    if-eqz p3, :cond_2

    .line 457
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->backgroundPoster:Lde/greenrobot/event/BackgroundPoster;

    invoke-virtual {v0, p1, p2}, Lde/greenrobot/event/BackgroundPoster;->enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    .line 458
    goto :goto_0

    .line 459
    :cond_2
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    .line 461
    goto :goto_0

    .line 449
    :cond_3
    if-eqz p3, :cond_4

    .line 450
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    .line 451
    goto :goto_0

    .line 452
    :cond_4
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->mainThreadPoster:Lde/greenrobot/event/HandlerPoster;

    invoke-virtual {v0, p1, p2}, Lde/greenrobot/event/HandlerPoster;->enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    .line 454
    goto :goto_0

    .line 446
    :cond_5
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    .line 447
    nop

    .line 468
    :goto_0
    return-void
.end method

.method private declared-synchronized register(Ljava/lang/Object;ZI)V
    .locals 3
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "sticky"    # Z
    .param p3, "priority"    # I

    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->subscriberMethodFinder:Lde/greenrobot/event/SubscriberMethodFinder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/SubscriberMethodFinder;->findSubscriberMethods(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 165
    .local v0, "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 168
    monitor-exit p0

    return-void

    .line 165
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/greenrobot/event/SubscriberMethod;

    .line 166
    .local v2, "subscriberMethod":Lde/greenrobot/event/SubscriberMethod;
    invoke-direct {p0, p1, v2, p2, p3}, Lde/greenrobot/event/EventBus;->subscribe(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 163
    .end local v0    # "subscriberMethods":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    .end local v2    # "subscriberMethod":Lde/greenrobot/event/SubscriberMethod;
    .end local p0    # "this":Lde/greenrobot/event/EventBus;
    .end local p1    # "subscriber":Ljava/lang/Object;
    .end local p2    # "sticky":Z
    .end local p3    # "priority":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private subscribe(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;ZI)V
    .locals 10
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "subscriberMethod"    # Lde/greenrobot/event/SubscriberMethod;
    .param p3, "sticky"    # Z
    .param p4, "priority"    # I

    .line 172
    iget-object v0, p2, Lde/greenrobot/event/SubscriberMethod;->eventType:Ljava/lang/Class;

    .line 173
    .local v0, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 174
    .local v1, "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    new-instance v2, Lde/greenrobot/event/Subscription;

    invoke-direct {v2, p1, p2, p4}, Lde/greenrobot/event/Subscription;-><init>(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;I)V

    .line 175
    .local v2, "newSubscription":Lde/greenrobot/event/Subscription;
    if-nez v1, :cond_0

    .line 176
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move-object v1, v3

    .line 177
    iget-object v3, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 188
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    .line 189
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-le v4, v3, :cond_1

    goto :goto_3

    .line 190
    :cond_1
    if-eq v4, v3, :cond_3

    iget v5, v2, Lde/greenrobot/event/Subscription;->priority:I

    invoke-virtual {v1, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lde/greenrobot/event/Subscription;

    iget v6, v6, Lde/greenrobot/event/Subscription;->priority:I

    if-le v5, v6, :cond_2

    goto :goto_2

    .line 189
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 191
    :cond_3
    :goto_2
    invoke-virtual {v1, v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 192
    nop

    .line 196
    .end local v4    # "i":I
    :goto_3
    iget-object v4, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 197
    .local v4, "subscribedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-nez v4, :cond_4

    .line 198
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 199
    iget-object v5, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_4
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    if-eqz p3, :cond_8

    .line 204
    iget-boolean v5, p0, Lde/greenrobot/event/EventBus;->eventInheritance:Z

    if-eqz v5, :cond_7

    .line 209
    iget-object v5, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 210
    .local v5, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Object;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 217
    .end local v5    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Object;>;>;"
    goto :goto_5

    .line 210
    .restart local v5    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Object;>;>;"
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 211
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    .line 212
    .local v8, "candidateEventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 213
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 214
    .local v9, "stickyEvent":Ljava/lang/Object;
    invoke-direct {p0, v2, v9}, Lde/greenrobot/event/EventBus;->checkPostStickyEventToSubscription(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    goto :goto_4

    .line 218
    .end local v5    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Object;>;>;"
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    .end local v8    # "candidateEventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "stickyEvent":Ljava/lang/Object;
    :cond_7
    iget-object v5, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 219
    .local v5, "stickyEvent":Ljava/lang/Object;
    invoke-direct {p0, v2, v5}, Lde/greenrobot/event/EventBus;->checkPostStickyEventToSubscription(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    .line 222
    .end local v5    # "stickyEvent":Ljava/lang/Object;
    :cond_8
    :goto_5
    return-void

    .line 180
    .end local v3    # "size":I
    .end local v4    # "subscribedEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_9
    new-instance v3, Lde/greenrobot/event/EventBusException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Subscriber "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " already registered to event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-direct {v3, v4}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v3

    :goto_7
    goto :goto_6
.end method

.method private unsubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 5
    .param p1, "subscriber"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 238
    .local p2, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 239
    .local v0, "subscriptions":Ljava/util/List;, "Ljava/util/List<Lde/greenrobot/event/Subscription;>;"
    if-eqz v0, :cond_2

    .line 240
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 241
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    .line 242
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/greenrobot/event/Subscription;

    .line 243
    .local v3, "subscription":Lde/greenrobot/event/Subscription;
    iget-object v4, v3, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    if-ne v4, p1, :cond_1

    .line 244
    const/4 v4, 0x0

    iput-boolean v4, v3, Lde/greenrobot/event/Subscription;->active:Z

    .line 245
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 246
    add-int/lit8 v2, v2, -0x1

    .line 247
    add-int/lit8 v1, v1, -0x1

    .line 241
    .end local v3    # "subscription":Lde/greenrobot/event/Subscription;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public cancelEventDelivery(Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus$PostingThreadState;

    .line 298
    .local v0, "postingState":Lde/greenrobot/event/EventBus$PostingThreadState;
    iget-boolean v1, v0, Lde/greenrobot/event/EventBus$PostingThreadState;->isPosting:Z

    if-eqz v1, :cond_3

    .line 301
    if-eqz p1, :cond_2

    .line 303
    iget-object v1, v0, Lde/greenrobot/event/EventBus$PostingThreadState;->event:Ljava/lang/Object;

    if-ne v1, p1, :cond_1

    .line 305
    iget-object v1, v0, Lde/greenrobot/event/EventBus$PostingThreadState;->subscription:Lde/greenrobot/event/Subscription;

    iget-object v1, v1, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;

    iget-object v1, v1, Lde/greenrobot/event/SubscriberMethod;->threadMode:Lde/greenrobot/event/ThreadMode;

    sget-object v2, Lde/greenrobot/event/ThreadMode;->PostThread:Lde/greenrobot/event/ThreadMode;

    if-ne v1, v2, :cond_0

    .line 309
    const/4 v1, 0x1

    iput-boolean v1, v0, Lde/greenrobot/event/EventBus$PostingThreadState;->canceled:Z

    .line 310
    return-void

    .line 306
    :cond_0
    new-instance v1, Lde/greenrobot/event/EventBusException;

    const-string v2, " event handlers may only abort the incoming event"

    invoke-direct {v1, v2}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    :cond_1
    new-instance v1, Lde/greenrobot/event/EventBusException;

    const-string v2, "Only the currently handled event may be aborted"

    invoke-direct {v1, v2}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :cond_2
    new-instance v1, Lde/greenrobot/event/EventBusException;

    const-string v2, "Event may not be null"

    invoke-direct {v1, v2}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_3
    new-instance v1, Lde/greenrobot/event/EventBusException;

    .line 300
    nop

    .line 299
    const-string v2, "This method may only be called from inside event handling methods on the posting thread"

    invoke-direct {v1, v2}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 560
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 331
    .local p1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v0

    .line 332
    :try_start_0
    iget-object v1, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 331
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasSubscriberForEvent(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 375
    .local p1, "eventClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lde/greenrobot/event/EventBus;->lookupAllEventTypes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 376
    .local v0, "eventTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v0, :cond_2

    .line 377
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 378
    .local v1, "countTypes":I
    const/4 v2, 0x0

    .local v2, "h":I
    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    .line 379
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 381
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    .line 382
    :try_start_0
    iget-object v4, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 381
    .local v4, "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 385
    const/4 v5, 0x1

    return v5

    .line 378
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "subscriptions":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lde/greenrobot/event/Subscription;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 389
    .end local v1    # "countTypes":I
    .end local v2    # "h":I
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method invokeSubscriber(Lde/greenrobot/event/PendingPost;)V
    .locals 3
    .param p1, "pendingPost"    # Lde/greenrobot/event/PendingPost;

    .line 505
    iget-object v0, p1, Lde/greenrobot/event/PendingPost;->event:Ljava/lang/Object;

    .line 506
    .local v0, "event":Ljava/lang/Object;
    iget-object v1, p1, Lde/greenrobot/event/PendingPost;->subscription:Lde/greenrobot/event/Subscription;

    .line 507
    .local v1, "subscription":Lde/greenrobot/event/Subscription;
    invoke-static {p1}, Lde/greenrobot/event/PendingPost;->releasePendingPost(Lde/greenrobot/event/PendingPost;)V

    .line 508
    iget-boolean v2, v1, Lde/greenrobot/event/Subscription;->active:Z

    if-eqz v2, :cond_0

    .line 509
    invoke-virtual {p0, v1, v0}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V

    .line 511
    :cond_0
    return-void
.end method

.method invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
    .locals 4
    .param p1, "subscription"    # Lde/greenrobot/event/Subscription;
    .param p2, "event"    # Ljava/lang/Object;

    .line 515
    :try_start_0
    iget-object v0, p1, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;

    iget-object v0, v0, Lde/greenrobot/event/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    iget-object v1, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 516
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lde/greenrobot/event/EventBus;->handleSubscriberException(Lde/greenrobot/event/Subscription;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 521
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    return-void
.end method

.method public declared-synchronized isRegistered(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "subscriber"    # Ljava/lang/Object;

    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lde/greenrobot/event/EventBus;
    .end local p1    # "subscriber":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public post(Ljava/lang/Object;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->currentPostingThreadState:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus$PostingThreadState;

    .line 269
    .local v0, "postingState":Lde/greenrobot/event/EventBus$PostingThreadState;
    iget-object v1, v0, Lde/greenrobot/event/EventBus$PostingThreadState;->eventQueue:Ljava/util/List;

    .line 270
    .local v1, "eventQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-boolean v2, v0, Lde/greenrobot/event/EventBus$PostingThreadState;->isPosting:Z

    if-nez v2, :cond_3

    .line 273
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lde/greenrobot/event/EventBus$PostingThreadState;->isMainThread:Z

    .line 274
    iput-boolean v4, v0, Lde/greenrobot/event/EventBus$PostingThreadState;->isPosting:Z

    .line 275
    iget-boolean v2, v0, Lde/greenrobot/event/EventBus$PostingThreadState;->canceled:Z

    if-nez v2, :cond_2

    .line 279
    :goto_1
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 282
    nop

    .line 283
    iput-boolean v5, v0, Lde/greenrobot/event/EventBus$PostingThreadState;->isPosting:Z

    .line 284
    iput-boolean v5, v0, Lde/greenrobot/event/EventBus$PostingThreadState;->isMainThread:Z

    goto :goto_2

    .line 280
    :cond_1
    :try_start_1
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lde/greenrobot/event/EventBus;->postSingleEvent(Ljava/lang/Object;Lde/greenrobot/event/EventBus$PostingThreadState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 282
    :catchall_0
    move-exception v2

    .line 283
    iput-boolean v5, v0, Lde/greenrobot/event/EventBus$PostingThreadState;->isPosting:Z

    .line 284
    iput-boolean v5, v0, Lde/greenrobot/event/EventBus$PostingThreadState;->isMainThread:Z

    .line 285
    throw v2

    .line 276
    :cond_2
    new-instance v2, Lde/greenrobot/event/EventBusException;

    const-string v3, "Internal error. Abort state was not reset"

    invoke-direct {v2, v3}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_3
    :goto_2
    return-void
.end method

.method public postSticky(Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v0

    .line 319
    :try_start_0
    iget-object v1, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-virtual {p0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 323
    return-void

    .line 318
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public register(Ljava/lang/Object;)V
    .locals 1
    .param p1, "subscriber"    # Ljava/lang/Object;

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;ZI)V

    .line 135
    return-void
.end method

.method public register(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "priority"    # I

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;ZI)V

    .line 145
    return-void
.end method

.method public registerSticky(Ljava/lang/Object;)V
    .locals 2
    .param p1, "subscriber"    # Ljava/lang/Object;

    .line 152
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;ZI)V

    .line 153
    return-void
.end method

.method public registerSticky(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "subscriber"    # Ljava/lang/Object;
    .param p2, "priority"    # I

    .line 160
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;ZI)V

    .line 161
    return-void
.end method

.method public removeAllStickyEvents()V
    .locals 2

    .line 369
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v0

    .line 370
    :try_start_0
    iget-object v1, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 369
    monitor-exit v0

    .line 372
    return-void

    .line 369
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 342
    .local p1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 342
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeStickyEvent(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "event"    # Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    monitor-enter v0

    .line 354
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 355
    .local v1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 356
    .local v2, "existingEvent":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 357
    iget-object v3, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 360
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 353
    .end local v1    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "existingEvent":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;)V
    .locals 4
    .param p1, "subscriber"    # Ljava/lang/Object;

    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v0, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 256
    .local v0, "subscribedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v0, :cond_1

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    iget-object v1, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    goto :goto_1

    .line 257
    .end local p0    # "this":Lde/greenrobot/event/EventBus;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 258
    .local v2, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, v2}, Lde/greenrobot/event/EventBus;->unsubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    .line 262
    .end local v2    # "eventType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    sget-object v1, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Subscriber to unregister was not registered before: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :goto_1
    monitor-exit p0

    return-void

    .line 254
    .end local v0    # "subscribedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local p1    # "subscriber":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
