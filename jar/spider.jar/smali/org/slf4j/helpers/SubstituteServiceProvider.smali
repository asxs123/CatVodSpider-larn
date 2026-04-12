.class public Lorg/slf4j/helpers/SubstituteServiceProvider;
.super Ljava/lang/Object;
.source "r8-map-id-2529bd9f9432f7581499432f968cc06c395f44b718b6ac52c837ad569347106c"

# interfaces
.implements Lorg/slf4j/spi/SLF4JServiceProvider;


# instance fields
.field private final loggerFactory:Lorg/slf4j/helpers/SubstituteLoggerFactory;

.field private final markerFactory:Lorg/slf4j/IMarkerFactory;

.field private final mdcAdapter:Lorg/slf4j/spi/MDCAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/slf4j/helpers/SubstituteLoggerFactory;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteServiceProvider;->loggerFactory:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 10
    .line 11
    new-instance v0, Lorg/slf4j/helpers/BasicMarkerFactory;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/slf4j/helpers/BasicMarkerFactory;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteServiceProvider;->markerFactory:Lorg/slf4j/IMarkerFactory;

    .line 17
    .line 18
    new-instance v0, Lorg/slf4j/helpers/BasicMDCAdapter;

    .line 19
    .line 20
    invoke-direct {v0}, Lorg/slf4j/helpers/BasicMDCAdapter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteServiceProvider;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public getLoggerFactory()Lorg/slf4j/ILoggerFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteServiceProvider;->loggerFactory:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMDCAdapter()Lorg/slf4j/spi/MDCAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteServiceProvider;->mdcAdapter:Lorg/slf4j/spi/MDCAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMarkerFactory()Lorg/slf4j/IMarkerFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteServiceProvider;->markerFactory:Lorg/slf4j/IMarkerFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequestedApiVersion()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public getSubstituteLoggerFactory()Lorg/slf4j/helpers/SubstituteLoggerFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteServiceProvider;->loggerFactory:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public initialize()V
    .locals 0

    .line 1
    return-void
.end method
