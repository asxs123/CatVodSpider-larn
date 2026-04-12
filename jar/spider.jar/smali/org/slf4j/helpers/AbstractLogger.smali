.class public abstract Lorg/slf4j/helpers/AbstractLogger;
.super Ljava/lang/Object;
.source "r8-map-id-2529bd9f9432f7581499432f968cc06c395f44b718b6ac52c837ad569347106c"

# interfaces
.implements Lorg/slf4j/Logger;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2319b811d5894e77L


# instance fields
.field protected name:Ljava/lang/String;


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

.method private handle2ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 1
    instance-of v0, p5, Ljava/lang/Throwable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-array v7, v2, [Ljava/lang/Object;

    .line 8
    .line 9
    aput-object p4, v7, v1

    .line 10
    .line 11
    move-object v8, p5

    .line 12
    check-cast v8, Ljava/lang/Throwable;

    .line 13
    .line 14
    move-object v3, p0

    .line 15
    move-object v4, p1

    .line 16
    move-object v5, p2

    .line 17
    move-object v6, p3

    .line 18
    invoke-virtual/range {v3 .. v8}, Lorg/slf4j/helpers/AbstractLogger;->handleNormalizedLoggingCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    move-object v4, p1

    .line 23
    move-object v5, p2

    .line 24
    move-object v3, p3

    .line 25
    const/4 p1, 0x2

    .line 26
    new-array p1, p1, [Ljava/lang/Object;

    .line 27
    .line 28
    aput-object p4, p1, v1

    .line 29
    .line 30
    aput-object p5, p1, v2

    .line 31
    .line 32
    move-object v2, v5

    .line 33
    const/4 v5, 0x0

    .line 34
    move-object v0, p0

    .line 35
    move-object v1, v4

    .line 36
    move-object v4, p1

    .line 37
    invoke-virtual/range {v0 .. v5}, Lorg/slf4j/helpers/AbstractLogger;->handleNormalizedLoggingCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private handleArgArrayCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 12

    .line 1
    invoke-static/range {p4 .. p4}, Lorg/slf4j/helpers/MessageFormatter;->getThrowableCandidate([Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v5

    .line 5
    if-eqz v5, :cond_0

    .line 6
    .line 7
    invoke-static/range {p4 .. p4}, Lorg/slf4j/helpers/MessageFormatter;->trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    move-object v0, p0

    .line 12
    move-object v1, p1

    .line 13
    move-object v2, p2

    .line 14
    move-object v3, p3

    .line 15
    invoke-virtual/range {v0 .. v5}, Lorg/slf4j/helpers/AbstractLogger;->handleNormalizedLoggingCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v11, 0x0

    .line 20
    move-object v6, p0

    .line 21
    move-object v7, p1

    .line 22
    move-object v8, p2

    .line 23
    move-object v9, p3

    .line 24
    move-object/from16 v10, p4

    .line 25
    .line 26
    invoke-virtual/range {v6 .. v11}, Lorg/slf4j/helpers/AbstractLogger;->handleNormalizedLoggingCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lorg/slf4j/helpers/AbstractLogger;->handleNormalizedLoggingCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private handle_1ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v5, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    aput-object p4, v5, v0

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    invoke-virtual/range {v1 .. v6}, Lorg/slf4j/helpers/AbstractLogger;->handleNormalizedLoggingCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final synthetic atDebug()Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/github/catvod/spider/merge/D0/a;->a(Lorg/slf4j/Logger;)Lorg/slf4j/spi/LoggingEventBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final synthetic atError()Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/github/catvod/spider/merge/D0/a;->b(Lorg/slf4j/Logger;)Lorg/slf4j/spi/LoggingEventBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final synthetic atInfo()Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/github/catvod/spider/merge/D0/a;->c(Lorg/slf4j/Logger;)Lorg/slf4j/spi/LoggingEventBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final synthetic atLevel(Lorg/slf4j/event/Level;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/github/catvod/spider/merge/D0/a;->d(Lorg/slf4j/Logger;Lorg/slf4j/event/Level;)Lorg/slf4j/spi/LoggingEventBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final synthetic atTrace()Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/github/catvod/spider/merge/D0/a;->e(Lorg/slf4j/Logger;)Lorg/slf4j/spi/LoggingEventBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final synthetic atWarn()Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/github/catvod/spider/merge/D0/a;->f(Lorg/slf4j/Logger;)Lorg/slf4j/spi/LoggingEventBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public debug(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v1}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    invoke-interface {p0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/slf4j/helpers/AbstractLogger;->handle_1ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 5
    invoke-interface {p0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v2, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/slf4j/helpers/AbstractLogger;->handle2ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 9
    invoke-interface {p0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 7
    invoke-interface {p0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/slf4j/helpers/AbstractLogger;->handleArgArrayCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 2

    .line 11
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isDebugEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 13
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isDebugEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/helpers/AbstractLogger;->handle_1ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 15
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isDebugEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    sget-object v2, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/slf4j/helpers/AbstractLogger;->handle2ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 19
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isDebugEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs debug(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 17
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isDebugEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/helpers/AbstractLogger;->handleArgArrayCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v1}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    invoke-interface {p0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/slf4j/helpers/AbstractLogger;->handle_1ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 5
    invoke-interface {p0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v2, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/slf4j/helpers/AbstractLogger;->handle2ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 9
    invoke-interface {p0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 7
    invoke-interface {p0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/slf4j/helpers/AbstractLogger;->handleArgArrayCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 2

    .line 11
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isErrorEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 13
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isErrorEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/helpers/AbstractLogger;->handle_1ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 15
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isErrorEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    sget-object v2, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/slf4j/helpers/AbstractLogger;->handle2ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 19
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isErrorEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs error(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 17
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isErrorEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lorg/slf4j/event/Level;->ERROR:Lorg/slf4j/event/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/helpers/AbstractLogger;->handleArgArrayCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public abstract getFullyQualifiedCallerName()Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/AbstractLogger;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract handleNormalizedLoggingCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public info(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v1}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    invoke-interface {p0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/slf4j/helpers/AbstractLogger;->handle_1ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 5
    invoke-interface {p0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v2, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/slf4j/helpers/AbstractLogger;->handle2ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 9
    invoke-interface {p0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 7
    invoke-interface {p0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/slf4j/helpers/AbstractLogger;->handleArgArrayCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 2

    .line 11
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isInfoEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 13
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isInfoEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/helpers/AbstractLogger;->handle_1ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 15
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isInfoEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    sget-object v2, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/slf4j/helpers/AbstractLogger;->handle2ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 19
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isInfoEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs info(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 17
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isInfoEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lorg/slf4j/event/Level;->INFO:Lorg/slf4j/event/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/helpers/AbstractLogger;->handleArgArrayCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final synthetic isEnabledForLevel(Lorg/slf4j/event/Level;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/github/catvod/spider/merge/D0/a;->g(Lorg/slf4j/Logger;Lorg/slf4j/event/Level;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic makeLoggingEventBuilder(Lorg/slf4j/event/Level;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/github/catvod/spider/merge/D0/a;->h(Lorg/slf4j/Logger;Lorg/slf4j/event/Level;)Lorg/slf4j/spi/LoggingEventBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/AbstractLogger;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v1}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    invoke-interface {p0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/slf4j/helpers/AbstractLogger;->handle_1ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 5
    invoke-interface {p0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v2, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/slf4j/helpers/AbstractLogger;->handle2ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 9
    invoke-interface {p0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 7
    invoke-interface {p0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/slf4j/helpers/AbstractLogger;->handleArgArrayCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 2

    .line 11
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isTraceEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 13
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isTraceEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/helpers/AbstractLogger;->handle_1ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 15
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isTraceEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    sget-object v2, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/slf4j/helpers/AbstractLogger;->handle2ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 19
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isTraceEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs trace(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 17
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isTraceEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/helpers/AbstractLogger;->handleArgArrayCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v1}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    invoke-interface {p0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/slf4j/helpers/AbstractLogger;->handle_1ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 5
    invoke-interface {p0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v2, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/slf4j/helpers/AbstractLogger;->handle2ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 9
    invoke-interface {p0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 7
    invoke-interface {p0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/slf4j/helpers/AbstractLogger;->handleArgArrayCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 2

    .line 11
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isWarnEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 13
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isWarnEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/helpers/AbstractLogger;->handle_1ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 15
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isWarnEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    sget-object v2, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/slf4j/helpers/AbstractLogger;->handle2ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 19
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isWarnEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/helpers/AbstractLogger;->handle_0ArgsCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs warn(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 17
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->isWarnEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/slf4j/helpers/AbstractLogger;->handleArgArrayCall(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
