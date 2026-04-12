.class public final Lorg/slf4j/helpers/MessageFormatter;
.super Ljava/lang/Object;
.source "r8-map-id-2529bd9f9432f7581499432f968cc06c395f44b718b6ac52c837ad569347106c"


# static fields
.field static final DELIM_START:C = '{'

.field static final DELIM_STOP:C = '}'

.field static final DELIM_STR:Ljava/lang/String; = "{}"

.field private static final ESCAPE_CHAR:C = '\\'


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

.method public static final arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/slf4j/helpers/MessageFormatter;->getThrowableCandidate([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lorg/slf4j/helpers/MessageFormatter;->trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 3
    :cond_0
    invoke-static {p0, p1, v0}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayFormat(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/slf4j/helpers/FormattingTuple;
    .locals 5

    if-nez p0, :cond_0

    .line 4
    new-instance p0, Lorg/slf4j/helpers/FormattingTuple;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    new-instance p1, Lorg/slf4j/helpers/FormattingTuple;

    invoke-direct {p1, p0}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_6

    .line 8
    const-string v3, "{}"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    if-nez v2, :cond_2

    .line 9
    new-instance v0, Lorg/slf4j/helpers/FormattingTuple;

    invoke-direct {v0, p0, p1, p2}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0

    .line 10
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 11
    new-instance p0, Lorg/slf4j/helpers/FormattingTuple;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0

    .line 12
    :cond_3
    invoke-static {p0, v3}, Lorg/slf4j/helpers/MessageFormatter;->isEscapedDelimeter(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 13
    invoke-static {p0, v3}, Lorg/slf4j/helpers/MessageFormatter;->isDoubleEscaped(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v3, -0x1

    .line 14
    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :goto_1
    move v2, v3

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v3, -0x1

    .line 16
    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 17
    aget-object v2, p1, v1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v2, v4}, Lorg/slf4j/helpers/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Map;)V

    :goto_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 18
    :cond_5
    invoke-virtual {v0, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 19
    aget-object v2, p1, v1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v2, v4}, Lorg/slf4j/helpers/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 21
    new-instance p0, Lorg/slf4j/helpers/FormattingTuple;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static final basicArrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static basicArrayFormat(Lorg/slf4j/helpers/NormalizedParameters;)Ljava/lang/String;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/slf4j/helpers/NormalizedParameters;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/slf4j/helpers/NormalizedParameters;->getArguments()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/slf4j/helpers/MessageFormatter;->basicArrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static booleanArrayAppend(Ljava/lang/StringBuilder;[Z)V
    .locals 3

    .line 1
    const/16 v0, 0x5b

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    aget-boolean v2, p1, v1

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    add-int/lit8 v2, v0, -0x1

    .line 16
    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    const-string v2, ", "

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 p1, 0x5d

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private static byteArrayAppend(Ljava/lang/StringBuilder;[B)V
    .locals 3

    .line 1
    const/16 v0, 0x5b

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    aget-byte v2, p1, v1

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    add-int/lit8 v2, v0, -0x1

    .line 16
    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    const-string v2, ", "

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 p1, 0x5d

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private static charArrayAppend(Ljava/lang/StringBuilder;[C)V
    .locals 3

    .line 1
    const/16 v0, 0x5b

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    aget-char v2, p1, v1

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    add-int/lit8 v2, v0, -0x1

    .line 16
    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    const-string v2, ", "

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 p1, 0x5d

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private static deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "null"

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->safeObjectAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    instance-of v0, p1, [Z

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    check-cast p1, [Z

    .line 28
    .line 29
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->booleanArrayAppend(Ljava/lang/StringBuilder;[Z)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    instance-of v0, p1, [B

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    check-cast p1, [B

    .line 38
    .line 39
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->byteArrayAppend(Ljava/lang/StringBuilder;[B)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    instance-of v0, p1, [C

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    check-cast p1, [C

    .line 48
    .line 49
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->charArrayAppend(Ljava/lang/StringBuilder;[C)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_4
    instance-of v0, p1, [S

    .line 54
    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    check-cast p1, [S

    .line 58
    .line 59
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->shortArrayAppend(Ljava/lang/StringBuilder;[S)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_5
    instance-of v0, p1, [I

    .line 64
    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    check-cast p1, [I

    .line 68
    .line 69
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->intArrayAppend(Ljava/lang/StringBuilder;[I)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_6
    instance-of v0, p1, [J

    .line 74
    .line 75
    if-eqz v0, :cond_7

    .line 76
    .line 77
    check-cast p1, [J

    .line 78
    .line 79
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->longArrayAppend(Ljava/lang/StringBuilder;[J)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_7
    instance-of v0, p1, [F

    .line 84
    .line 85
    if-eqz v0, :cond_8

    .line 86
    .line 87
    check-cast p1, [F

    .line 88
    .line 89
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->floatArrayAppend(Ljava/lang/StringBuilder;[F)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_8
    instance-of v0, p1, [D

    .line 94
    .line 95
    if-eqz v0, :cond_9

    .line 96
    .line 97
    check-cast p1, [D

    .line 98
    .line 99
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->doubleArrayAppend(Ljava/lang/StringBuilder;[D)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_9
    check-cast p1, [Ljava/lang/Object;

    .line 104
    .line 105
    invoke-static {p0, p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->objectArrayAppend(Ljava/lang/StringBuilder;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method private static doubleArrayAppend(Ljava/lang/StringBuilder;[D)V
    .locals 4

    .line 1
    const/16 v0, 0x5b

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    aget-wide v2, p1, v1

    .line 11
    .line 12
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    add-int/lit8 v2, v0, -0x1

    .line 16
    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    const-string v2, ", "

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 p1, 0x5d

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private static floatArrayAppend(Ljava/lang/StringBuilder;[F)V
    .locals 3

    .line 1
    const/16 v0, 0x5b

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    aget v2, p1, v1

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    add-int/lit8 v2, v0, -0x1

    .line 16
    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    const-string v2, ", "

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 p1, 0x5d

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static final format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;
    .locals 2

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p0

    return-object p0
.end method

.method public static final format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;
    .locals 2

    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p0

    return-object p0
.end method

.method public static getThrowableCandidate([Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/slf4j/helpers/NormalizedParameters;->getThrowableCandidate([Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static intArrayAppend(Ljava/lang/StringBuilder;[I)V
    .locals 3

    .line 1
    const/16 v0, 0x5b

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    aget v2, p1, v1

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    add-int/lit8 v2, v0, -0x1

    .line 16
    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    const-string v2, ", "

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 p1, 0x5d

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static final isDoubleEscaped(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    sub-int/2addr p1, v0

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/16 p1, 0x5c

    .line 10
    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public static final isEscapedDelimeter(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    sub-int/2addr p1, v1

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/16 p1, 0x5c

    .line 12
    .line 13
    if-ne p0, p1, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    return v0
.end method

.method private static longArrayAppend(Ljava/lang/StringBuilder;[J)V
    .locals 4

    .line 1
    const/16 v0, 0x5b

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    aget-wide v2, p1, v1

    .line 11
    .line 12
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    add-int/lit8 v2, v0, -0x1

    .line 16
    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    const-string v2, ", "

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 p1, 0x5d

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private static objectArrayAppend(Ljava/lang/StringBuilder;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/16 v0, 0x5b

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    array-length v0, p1

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-ge v1, v0, :cond_1

    .line 19
    .line 20
    aget-object v2, p1, v1

    .line 21
    .line 22
    invoke-static {p0, v2, p2}, Lorg/slf4j/helpers/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Map;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v0, -0x1

    .line 26
    .line 27
    if-eq v1, v2, :cond_0

    .line 28
    .line 29
    const-string v2, ", "

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const-string p1, "..."

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    :goto_1
    const/16 p1, 0x5d

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private static safeObjectAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "SLF4J: Failed toString() invocation on an object of type ["

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, "]"

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1, v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    const-string p1, "[FAILED toString()]"

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private static shortArrayAppend(Ljava/lang/StringBuilder;[S)V
    .locals 3

    .line 1
    const/16 v0, 0x5b

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    aget-short v2, p1, v1

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    add-int/lit8 v2, v0, -0x1

    .line 16
    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    const-string v2, ", "

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 p1, 0x5d

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/slf4j/helpers/NormalizedParameters;->trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
