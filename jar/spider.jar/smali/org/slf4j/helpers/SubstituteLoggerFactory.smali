.class public Lorg/slf4j/helpers/SubstituteLoggerFactory;
.super Ljava/lang/Object;
.source "r8-map-id-2529bd9f9432f7581499432f968cc06c395f44b718b6ac52c837ad569347106c"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# instance fields
.field final eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lorg/slf4j/event/SubstituteLoggingEvent;",
            ">;"
        }
    .end annotation
.end field

.field final loggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/slf4j/helpers/SubstituteLogger;",
            ">;"
        }
    .end annotation
.end field

.field volatile postInitialization:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->postInitialization:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/Map;

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getEventQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lorg/slf4j/event/SubstituteLoggingEvent;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lorg/slf4j/helpers/SubstituteLogger;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lorg/slf4j/helpers/SubstituteLogger;

    .line 13
    .line 14
    iget-object v1, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 15
    .line 16
    iget-boolean v2, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->postInitialization:Z

    .line 17
    .line 18
    invoke-direct {v0, p1, v1, v2}, Lorg/slf4j/helpers/SubstituteLogger;-><init>(Ljava/lang/String;Ljava/util/Queue;Z)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit p0

    .line 30
    return-object v0

    .line 31
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p1
.end method

.method public getLoggerNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public getLoggers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/slf4j/helpers/SubstituteLogger;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public postInitialization()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->postInitialization:Z

    .line 3
    .line 4
    return-void
.end method
