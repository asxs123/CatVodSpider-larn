.class public Lorg/slf4j/MarkerFactory;
.super Ljava/lang/Object;
.source "r8-map-id-2529bd9f9432f7581499432f968cc06c395f44b718b6ac52c837ad569347106c"


# static fields
.field static MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getProvider()Lorg/slf4j/spi/SLF4JServiceProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lorg/slf4j/spi/SLF4JServiceProvider;->getMarkerFactory()Lorg/slf4j/IMarkerFactory;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/slf4j/MarkerFactory;->MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v0, "Failed to find provider"

    .line 15
    .line 16
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "Defaulting to BasicMarkerFactory."

    .line 20
    .line 21
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lorg/slf4j/helpers/BasicMarkerFactory;

    .line 25
    .line 26
    invoke-direct {v0}, Lorg/slf4j/helpers/BasicMarkerFactory;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lorg/slf4j/MarkerFactory;->MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;

    .line 30
    .line 31
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

.method public static getDetachedMarker(Ljava/lang/String;)Lorg/slf4j/Marker;
    .locals 1

    .line 1
    sget-object v0, Lorg/slf4j/MarkerFactory;->MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lorg/slf4j/IMarkerFactory;->getDetachedMarker(Ljava/lang/String;)Lorg/slf4j/Marker;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getIMarkerFactory()Lorg/slf4j/IMarkerFactory;
    .locals 1

    .line 1
    sget-object v0, Lorg/slf4j/MarkerFactory;->MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getMarker(Ljava/lang/String;)Lorg/slf4j/Marker;
    .locals 1

    .line 1
    sget-object v0, Lorg/slf4j/MarkerFactory;->MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lorg/slf4j/IMarkerFactory;->getMarker(Ljava/lang/String;)Lorg/slf4j/Marker;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
