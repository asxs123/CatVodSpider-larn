.class public Lorg/slf4j/spi/DefaultLoggingEventBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-2529bd9f9432f7581499432f968cc06c395f44b718b6ac52c837ad569347106c"

# interfaces
.implements Lorg/slf4j/spi/LoggingEventBuilder;
.implements Lorg/slf4j/spi/CallerBoundaryAware;


# static fields
.field static DLEB_FQCN:Ljava/lang/String; = "org.slf4j.spi.DefaultLoggingEventBuilder"


# instance fields
.field protected logger:Lorg/slf4j/Logger;

.field protected loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;


# direct methods
.method public constructor <init>(Lorg/slf4j/Logger;Lorg/slf4j/event/Level;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->logger:Lorg/slf4j/Logger;

    .line 5
    .line 6
    new-instance v0, Lorg/slf4j/event/DefaultLoggingEvent;

    .line 7
    .line 8
    invoke-direct {v0, p2, p1}, Lorg/slf4j/event/DefaultLoggingEvent;-><init>(Lorg/slf4j/event/Level;Lorg/slf4j/Logger;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    .line 12
    .line 13
    return-void
.end method

.method private logViaPublicSLF4JLoggerAPI(Lorg/slf4j/event/LoggingEvent;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getArgumentArray()[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    array-length v2, v0

    .line 11
    :goto_0
    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getThrowable()Ljava/lang/Throwable;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x1

    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v5, 0x1

    .line 21
    :goto_1
    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    add-int/2addr v5, v2

    .line 26
    new-array v5, v5, [Ljava/lang/Object;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-static {v0, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    :cond_2
    if-eqz v3, :cond_3

    .line 34
    .line 35
    aput-object v3, v5, v2

    .line 36
    .line 37
    :cond_3
    invoke-direct {p0, p1, v6}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->mergeMarkersAndKeyValuePairs(Lorg/slf4j/event/LoggingEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Lorg/slf4j/spi/DefaultLoggingEventBuilder$1;->$SwitchMap$org$slf4j$event$Level:[I

    .line 42
    .line 43
    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getLevel()Lorg/slf4j/event/Level;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    aget p1, v1, p1

    .line 52
    .line 53
    if-eq p1, v4, :cond_8

    .line 54
    .line 55
    const/4 v1, 0x2

    .line 56
    if-eq p1, v1, :cond_7

    .line 57
    .line 58
    const/4 v1, 0x3

    .line 59
    if-eq p1, v1, :cond_6

    .line 60
    .line 61
    const/4 v1, 0x4

    .line 62
    if-eq p1, v1, :cond_5

    .line 63
    .line 64
    const/4 v1, 0x5

    .line 65
    if-eq p1, v1, :cond_4

    .line 66
    .line 67
    return-void

    .line 68
    :cond_4
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->logger:Lorg/slf4j/Logger;

    .line 69
    .line 70
    invoke-interface {p1, v0, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_5
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->logger:Lorg/slf4j/Logger;

    .line 75
    .line 76
    invoke-interface {p1, v0, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_6
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->logger:Lorg/slf4j/Logger;

    .line 81
    .line 82
    invoke-interface {p1, v0, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_7
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->logger:Lorg/slf4j/Logger;

    .line 87
    .line 88
    invoke-interface {p1, v0, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_8
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->logger:Lorg/slf4j/Logger;

    .line 93
    .line 94
    invoke-interface {p1, v0, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method private mergeMarkersAndKeyValuePairs(Lorg/slf4j/event/LoggingEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getMarkers()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x20

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getMarkers()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lorg/slf4j/Marker;

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    :cond_1
    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getKeyValuePairs()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-interface {p1}, Lorg/slf4j/event/LoggingEvent;->getKeyValuePairs()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lorg/slf4j/event/KeyValuePair;

    .line 74
    .line 75
    iget-object v3, v2, Lorg/slf4j/event/KeyValuePair;->key:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const/16 v3, 0x3d

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v2, v2, Lorg/slf4j/event/KeyValuePair;->value:Ljava/lang/Object;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    if-eqz v0, :cond_4

    .line 95
    .line 96
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :cond_4
    return-object p2
.end method


# virtual methods
.method public addArgument(Ljava/lang/Object;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->addArgument(Ljava/lang/Object;)V

    return-object p0
.end method

.method public addArgument(Ljava/util/function/Supplier;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "*>;)",
            "Lorg/slf4j/spi/LoggingEventBuilder;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-static {p1}, Lcom/github/catvod/spider/merge/F/a;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->addArgument(Ljava/lang/Object;)V

    return-object p0
.end method

.method public addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {v0, p1, p2}, Lorg/slf4j/event/DefaultLoggingEvent;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addKeyValue(Ljava/lang/String;Ljava/util/function/Supplier;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/slf4j/spi/LoggingEventBuilder;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-static {p2}, Lcom/github/catvod/spider/merge/F/a;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/slf4j/event/DefaultLoggingEvent;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public addMarker(Lorg/slf4j/Marker;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->addMarker(Lorg/slf4j/Marker;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public log()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {p0, v0}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->log(Lorg/slf4j/event/LoggingEvent;)V

    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->setMessage(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {p0, p1}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->log(Lorg/slf4j/event/LoggingEvent;)V

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->setMessage(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {p1, p2}, Lorg/slf4j/event/DefaultLoggingEvent;->addArgument(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {p0, p1}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->log(Lorg/slf4j/event/LoggingEvent;)V

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->setMessage(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {p1, p2}, Lorg/slf4j/event/DefaultLoggingEvent;->addArgument(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {p1, p3}, Lorg/slf4j/event/DefaultLoggingEvent;->addArgument(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {p0, p1}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->log(Lorg/slf4j/event/LoggingEvent;)V

    return-void
.end method

.method public varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->setMessage(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {p1, p2}, Lorg/slf4j/event/DefaultLoggingEvent;->addArguments([Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {p0, p1}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->log(Lorg/slf4j/event/LoggingEvent;)V

    return-void
.end method

.method public log(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->log(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    invoke-static {p1}, Lcom/github/catvod/spider/merge/F/a;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->log(Ljava/lang/String;)V

    return-void
.end method

.method public log(Lorg/slf4j/event/LoggingEvent;)V
    .locals 2

    .line 16
    sget-object v0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->DLEB_FQCN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->setCallerBoundary(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->logger:Lorg/slf4j/Logger;

    instance-of v1, v0, Lorg/slf4j/spi/LoggingEventAware;

    if-eqz v1, :cond_0

    .line 18
    check-cast v0, Lorg/slf4j/spi/LoggingEventAware;

    invoke-interface {v0, p1}, Lorg/slf4j/spi/LoggingEventAware;->log(Lorg/slf4j/event/LoggingEvent;)V

    return-void

    .line 19
    :cond_0
    invoke-direct {p0, p1}, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->logViaPublicSLF4JLoggerAPI(Lorg/slf4j/event/LoggingEvent;)V

    return-void
.end method

.method public setCallerBoundary(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->setCallerBoundary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCause(Ljava/lang/Throwable;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->setThrowable(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->setMessage(Ljava/lang/String;)V

    return-object p0
.end method

.method public setMessage(Ljava/util/function/Supplier;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/slf4j/spi/LoggingEventBuilder;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/slf4j/spi/DefaultLoggingEventBuilder;->loggingEvent:Lorg/slf4j/event/DefaultLoggingEvent;

    invoke-static {p1}, Lcom/github/catvod/spider/merge/F/a;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/slf4j/event/DefaultLoggingEvent;->setMessage(Ljava/lang/String;)V

    return-object p0
.end method
