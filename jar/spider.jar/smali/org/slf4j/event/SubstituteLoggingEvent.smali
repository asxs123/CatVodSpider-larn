.class public Lorg/slf4j/event/SubstituteLoggingEvent;
.super Ljava/lang/Object;
.source "r8-map-id-2529bd9f9432f7581499432f968cc06c395f44b718b6ac52c837ad569347106c"

# interfaces
.implements Lorg/slf4j/event/LoggingEvent;


# instance fields
.field argArray:[Ljava/lang/Object;

.field keyValuePairList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/slf4j/event/KeyValuePair;",
            ">;"
        }
    .end annotation
.end field

.field level:Lorg/slf4j/event/Level;

.field logger:Lorg/slf4j/helpers/SubstituteLogger;

.field loggerName:Ljava/lang/String;

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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public addMarker(Lorg/slf4j/Marker;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->markers:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->markers:Ljava/util/List;

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->markers:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public getArgumentArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->argArray:[Ljava/lang/Object;

    .line 2
    .line 3
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
    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->argArray:[Ljava/lang/Object;

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
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final synthetic getCallerBoundary()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/github/catvod/spider/merge/E0/a;->a(Lorg/slf4j/event/LoggingEvent;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
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
    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->keyValuePairList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLevel()Lorg/slf4j/event/Level;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->level:Lorg/slf4j/event/Level;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogger()Lorg/slf4j/helpers/SubstituteLogger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->logger:Lorg/slf4j/helpers/SubstituteLogger;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->loggerName:Ljava/lang/String;

    .line 2
    .line 3
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
    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->markers:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->threadName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->throwable:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->timeStamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public setArgumentArray([Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->argArray:[Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public setLevel(Lorg/slf4j/event/Level;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->level:Lorg/slf4j/event/Level;

    .line 2
    .line 3
    return-void
.end method

.method public setLogger(Lorg/slf4j/helpers/SubstituteLogger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->logger:Lorg/slf4j/helpers/SubstituteLogger;

    .line 2
    .line 3
    return-void
.end method

.method public setLoggerName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->loggerName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->threadName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->throwable:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/slf4j/event/SubstituteLoggingEvent;->timeStamp:J

    .line 2
    .line 3
    return-void
.end method
