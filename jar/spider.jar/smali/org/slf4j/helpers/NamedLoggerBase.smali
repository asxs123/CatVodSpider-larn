.class abstract Lorg/slf4j/helpers/NamedLoggerBase;
.super Ljava/lang/Object;
.source "r8-map-id-2529bd9f9432f7581499432f968cc06c395f44b718b6ac52c837ad569347106c"

# interfaces
.implements Lorg/slf4j/Logger;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x68929dc81c4e557dL


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

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/NamedLoggerBase;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
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
    invoke-virtual {p0}, Lorg/slf4j/helpers/NamedLoggerBase;->getName()Ljava/lang/String;

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
