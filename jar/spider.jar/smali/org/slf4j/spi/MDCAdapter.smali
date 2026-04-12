.class public interface abstract Lorg/slf4j/spi/MDCAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-2529bd9f9432f7581499432f968cc06c395f44b718b6ac52c837ad569347106c"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract clearDequeByKey(Ljava/lang/String;)V
.end method

.method public abstract get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCopyOfContextMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCopyOfDequeByKey(Ljava/lang/String;)Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract popByKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract pushByKey(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract setContextMap(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
