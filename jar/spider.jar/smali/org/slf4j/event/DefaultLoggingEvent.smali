.class public Lorg/slf4j/event/DefaultLoggingEvent;
.super Ljava/lang/Object;
.source "r8-map-id-2529bd9f9432f7581499432f968cc06c395f44b718b6ac52c837ad569347106c"

# interfaces
.implements Lorg/slf4j/event/LoggingEvent;


# instance fields
.field arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field callerBoundary:Ljava/lang/String;

.field keyValuePairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/slf4j/event/KeyValuePair;",
            ">;"
        }
    .end annotation
.end field

.field level:Lorg/slf4j/event/Level;

.field logger:Lorg/slf4j/Logger;

.field markers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/slf4j/Marker;",
            ">;"
        }
    .end annotation
.end field

.field message:Ljava/lang/String;

.field threadName:Ljava/lang/String;

.field throwable:Ljava/lang/Throwable;

.field timeStamp:J


# direct methods
.method public constructor <init>(Lorg/slf4j/event/Level;Lorg/slf4j/Logger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/slf4j/event/DefaultLoggingEvent;->logger:Lorg/slf4j/Logger;

    .line 5
    .line 6
    iput-object p1, p0, Lorg/slf4j/event/DefaultLoggingEvent;->level:Lorg/slf4j/event/Level;

    .line 7
    .line 8
    return-void
.end method

.method private getNonNullArguments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->arguments:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->arguments:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->arguments:Ljava/util/List;

    .line 14
    .line 15
    return-object v0
.end method

.method private getNonnullKeyValuePairs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/slf4j/event/KeyValuePair;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->keyValuePairs:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->keyValuePairs:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->keyValuePairs:Ljava/util/List;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public addArgument(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/slf4j/event/DefaultLoggingEvent;->getNonNullArguments()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public varargs addArguments([Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/slf4j/event/DefaultLoggingEvent;->getNonNullArguments()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public addKeyValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/slf4j/event/DefaultLoggingEvent;->getNonnullKeyValuePairs()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/slf4j/event/KeyValuePair;

    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Lorg/slf4j/event/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public addMarker(Lorg/slf4j/Marker;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->markers:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->markers:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->markers:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public getArgumentArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->arguments:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->arguments:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCallerBoundary()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->callerBoundary:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getKeyValuePairs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/slf4j/event/KeyValuePair;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->keyValuePairs:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLevel()Lorg/slf4j/event/Level;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->level:Lorg/slf4j/event/Level;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->logger:Lorg/slf4j/Logger;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/slf4j/Logger;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMarkers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/slf4j/Marker;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->markers:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->threadName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->throwable:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/slf4j/event/DefaultLoggingEvent;->timeStamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public setCallerBoundary(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/DefaultLoggingEvent;->callerBoundary:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/DefaultLoggingEvent;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/DefaultLoggingEvent;->throwable:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/slf4j/event/DefaultLoggingEvent;->timeStamp:J

    .line 2
    .line 3
    return-void
.end method
