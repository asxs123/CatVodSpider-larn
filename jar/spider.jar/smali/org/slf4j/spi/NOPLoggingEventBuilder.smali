.class public Lorg/slf4j/spi/NOPLoggingEventBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-2529bd9f9432f7581499432f968cc06c395f44b718b6ac52c837ad569347106c"

# interfaces
.implements Lorg/slf4j/spi/LoggingEventBuilder;


# static fields
.field static final SINGLETON:Lorg/slf4j/spi/NOPLoggingEventBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/slf4j/spi/NOPLoggingEventBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/slf4j/spi/NOPLoggingEventBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/slf4j/spi/NOPLoggingEventBuilder;->SINGLETON:Lorg/slf4j/spi/NOPLoggingEventBuilder;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static singleton()Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 1

    .line 1
    sget-object v0, Lorg/slf4j/spi/NOPLoggingEventBuilder;->SINGLETON:Lorg/slf4j/spi/NOPLoggingEventBuilder;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public addArgument(Ljava/lang/Object;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 0

    .line 1
    invoke-static {}, Lorg/slf4j/spi/NOPLoggingEventBuilder;->singleton()Lorg/slf4j/spi/LoggingEventBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addArgument(Ljava/util/function/Supplier;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "*>;)",
            "Lorg/slf4j/spi/LoggingEventBuilder;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lorg/slf4j/spi/NOPLoggingEventBuilder;->singleton()Lorg/slf4j/spi/LoggingEventBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 0

    .line 1
    invoke-static {}, Lorg/slf4j/spi/NOPLoggingEventBuilder;->singleton()Lorg/slf4j/spi/LoggingEventBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addKeyValue(Ljava/lang/String;Ljava/util/function/Supplier;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 0
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
    invoke-static {}, Lorg/slf4j/spi/NOPLoggingEventBuilder;->singleton()Lorg/slf4j/spi/LoggingEventBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addMarker(Lorg/slf4j/Marker;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 0

    .line 1
    invoke-static {}, Lorg/slf4j/spi/NOPLoggingEventBuilder;->singleton()Lorg/slf4j/spi/LoggingEventBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public log()V
    .locals 0

    .line 1
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 3
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 4
    return-void
.end method

.method public varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 5
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

    .line 6
    return-void
.end method

.method public setCause(Ljava/lang/Throwable;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 0

    .line 1
    invoke-static {}, Lorg/slf4j/spi/NOPLoggingEventBuilder;->singleton()Lorg/slf4j/spi/LoggingEventBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public setMessage(Ljava/lang/String;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public setMessage(Ljava/util/function/Supplier;)Lorg/slf4j/spi/LoggingEventBuilder;
    .locals 0
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
    return-object p0
.end method
