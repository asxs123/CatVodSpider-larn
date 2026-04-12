.class public abstract Lorg/slf4j/helpers/LegacyAbstractLogger;
.super Lorg/slf4j/helpers/AbstractLogger;
.source "r8-map-id-2529bd9f9432f7581499432f968cc06c395f44b718b6ac52c837ad569347106c"


# static fields
.field private static final serialVersionUID:J = -0x61b9cc48ab4b90b6L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/slf4j/helpers/AbstractLogger;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public isDebugEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public isErrorEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public isInfoEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public isTraceEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public isWarnEnabled(Lorg/slf4j/Marker;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
