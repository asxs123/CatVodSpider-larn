.class public Lorg/slf4j/helpers/FormattingTuple;
.super Ljava/lang/Object;
.source "r8-map-id-2529bd9f9432f7581499432f968cc06c395f44b718b6ac52c837ad569347106c"


# static fields
.field public static NULL:Lorg/slf4j/helpers/FormattingTuple;


# instance fields
.field private final argArray:[Ljava/lang/Object;

.field private final message:Ljava/lang/String;

.field private final throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/slf4j/helpers/FormattingTuple;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/slf4j/helpers/FormattingTuple;->NULL:Lorg/slf4j/helpers/FormattingTuple;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/slf4j/helpers/FormattingTuple;->message:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/slf4j/helpers/FormattingTuple;->throwable:Ljava/lang/Throwable;

    .line 5
    iput-object p2, p0, Lorg/slf4j/helpers/FormattingTuple;->argArray:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getArgArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/FormattingTuple;->argArray:[Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/FormattingTuple;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/FormattingTuple;->throwable:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method
