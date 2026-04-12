.class public Lorg/slf4j/LoggerFactoryFriend;
.super Ljava/lang/Object;
.source "r8-map-id-2529bd9f9432f7581499432f968cc06c395f44b718b6ac52c837ad569347106c"


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

.method public static reset()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/slf4j/LoggerFactory;->reset()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setDetectLoggerNameMismatch(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lorg/slf4j/LoggerFactory;->DETECT_LOGGER_NAME_MISMATCH:Z

    .line 2
    .line 3
    return-void
.end method
