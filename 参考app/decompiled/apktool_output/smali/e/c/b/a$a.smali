.class public abstract Le/c/b/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/c/b/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/b/a$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Le/c/b/a<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Le/c/b/a$a<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Le/c/b/x$a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/util/Collection<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    instance-of v1, p0, Le/c/b/v;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Le/c/b/v;

    invoke-interface {v0}, Le/c/b/v;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Le/c/b/a$a;->checkForNullValues(Ljava/lang/Iterable;)V

    :goto_0
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_0
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    invoke-static {p0}, Le/c/b/a$a;->checkForNullValues(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    throw v0

    :cond_3
    :goto_2
    return-void

    :cond_4
    throw v0
.end method

.method public static checkForNullValues(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method private getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Reading "

    invoke-static {v0}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " threw an IOException (should never happen)."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static newUninitializedMessageException(Le/c/b/x;)Le/c/b/c0;
    .locals 0

    new-instance p0, Le/c/b/c0;

    invoke-direct {p0}, Le/c/b/c0;-><init>()V

    return-object p0
.end method


# virtual methods
.method public abstract clone()Le/c/b/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public bridge abstract synthetic clone()Le/c/b/x$a;
.end method

.method public bridge abstract synthetic clone()Ljava/lang/Object;
.end method

.method public abstract internalMergeFrom(Le/c/b/a;)Le/c/b/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 1

    invoke-static {}, Le/c/b/m;->a()Le/c/b/m;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/c/b/a$a;->mergeDelimitedFrom(Ljava/io/InputStream;Le/c/b/m;)Z

    move-result p1

    return p1
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Le/c/b/m;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, p1}, Le/c/b/h;->o(ILjava/io/InputStream;)I

    move-result v0

    new-instance v1, Le/c/b/a$a$a;

    invoke-direct {v1, p1, v0}, Le/c/b/a$a$a;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p0, v1, p2}, Le/c/b/a$a;->mergeFrom(Ljava/io/InputStream;Le/c/b/m;)Le/c/b/a$a;

    const/4 p1, 0x1

    return p1
.end method

.method public mergeFrom(Le/c/b/g;)Le/c/b/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/g;",
            ")TBuilderType;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Le/c/b/g;->g()Le/c/b/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/c/b/a$a;->mergeFrom(Le/c/b/h;)Le/c/b/a$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Le/c/b/h;->a(I)V
    :try_end_0
    .catch Le/c/b/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ByteString"

    invoke-direct {p0, v1}, Le/c/b/a$a;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    throw p1
.end method

.method public mergeFrom(Le/c/b/g;Le/c/b/m;)Le/c/b/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/g;",
            "Le/c/b/m;",
            ")TBuilderType;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Le/c/b/g;->g()Le/c/b/h;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Le/c/b/a$a;->mergeFrom(Le/c/b/h;Le/c/b/m;)Le/c/b/a$a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Le/c/b/h;->a(I)V
    :try_end_0
    .catch Le/c/b/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "ByteString"

    invoke-direct {p0, v0}, Le/c/b/a$a;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1
.end method

.method public mergeFrom(Le/c/b/h;)Le/c/b/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/h;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-static {}, Le/c/b/m;->a()Le/c/b/m;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/c/b/a$a;->mergeFrom(Le/c/b/h;Le/c/b/m;)Le/c/b/a$a;

    move-result-object p1

    return-object p1
.end method

.method public abstract mergeFrom(Le/c/b/h;Le/c/b/m;)Le/c/b/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/h;",
            "Le/c/b/m;",
            ")TBuilderType;"
        }
    .end annotation
.end method

.method public mergeFrom(Le/c/b/x;)Le/c/b/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/x;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-interface {p0}, Le/c/b/y;->getDefaultInstanceForType()Le/c/b/x;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Le/c/b/a;

    invoke-virtual {p0, p1}, Le/c/b/a$a;->internalMergeFrom(Le/c/b/a;)Le/c/b/a$a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public mergeFrom(Ljava/io/InputStream;)Le/c/b/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-static {p1}, Le/c/b/h;->c(Ljava/io/InputStream;)Le/c/b/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/c/b/a$a;->mergeFrom(Le/c/b/h;)Le/c/b/a$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Le/c/b/h;->a(I)V

    return-object p0
.end method

.method public mergeFrom(Ljava/io/InputStream;Le/c/b/m;)Le/c/b/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Le/c/b/m;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-static {p1}, Le/c/b/h;->c(Ljava/io/InputStream;)Le/c/b/h;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Le/c/b/a$a;->mergeFrom(Le/c/b/h;Le/c/b/m;)Le/c/b/a$a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Le/c/b/h;->a(I)V

    return-object p0
.end method

.method public mergeFrom([B)Le/c/b/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TBuilderType;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Le/c/b/a$a;->mergeFrom([BII)Le/c/b/a$a;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom([BII)Le/c/b/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2, p3}, Le/c/b/h;->d([BII)Le/c/b/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/c/b/a$a;->mergeFrom(Le/c/b/h;)Le/c/b/a$a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Le/c/b/h;->a(I)V
    :try_end_0
    .catch Le/c/b/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "byte array"

    invoke-direct {p0, p3}, Le/c/b/a$a;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1
.end method

.method public mergeFrom([BIILe/c/b/m;)Le/c/b/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Le/c/b/m;",
            ")TBuilderType;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2, p3}, Le/c/b/h;->d([BII)Le/c/b/h;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Le/c/b/a$a;->mergeFrom(Le/c/b/h;Le/c/b/m;)Le/c/b/a$a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Le/c/b/h;->a(I)V
    :try_end_0
    .catch Le/c/b/s; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "byte array"

    invoke-direct {p0, p3}, Le/c/b/a$a;->getReadingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1
.end method

.method public mergeFrom([BLe/c/b/m;)Le/c/b/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Le/c/b/m;",
            ")TBuilderType;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Le/c/b/a$a;->mergeFrom([BIILe/c/b/m;)Le/c/b/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Le/c/b/g;)Le/c/b/x$a;
    .locals 0

    invoke-virtual {p0, p1}, Le/c/b/a$a;->mergeFrom(Le/c/b/g;)Le/c/b/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Le/c/b/g;Le/c/b/m;)Le/c/b/x$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le/c/b/a$a;->mergeFrom(Le/c/b/g;Le/c/b/m;)Le/c/b/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Le/c/b/h;)Le/c/b/x$a;
    .locals 0

    invoke-virtual {p0, p1}, Le/c/b/a$a;->mergeFrom(Le/c/b/h;)Le/c/b/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge abstract synthetic mergeFrom(Le/c/b/h;Le/c/b/m;)Le/c/b/x$a;
.end method

.method public bridge synthetic mergeFrom(Le/c/b/x;)Le/c/b/x$a;
    .locals 0

    invoke-virtual {p0, p1}, Le/c/b/a$a;->mergeFrom(Le/c/b/x;)Le/c/b/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Le/c/b/x$a;
    .locals 0

    invoke-virtual {p0, p1}, Le/c/b/a$a;->mergeFrom(Ljava/io/InputStream;)Le/c/b/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Le/c/b/m;)Le/c/b/x$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le/c/b/a$a;->mergeFrom(Ljava/io/InputStream;Le/c/b/m;)Le/c/b/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Le/c/b/x$a;
    .locals 0

    invoke-virtual {p0, p1}, Le/c/b/a$a;->mergeFrom([B)Le/c/b/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Le/c/b/x$a;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Le/c/b/a$a;->mergeFrom([BII)Le/c/b/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILe/c/b/m;)Le/c/b/x$a;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Le/c/b/a$a;->mergeFrom([BIILe/c/b/m;)Le/c/b/a$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLe/c/b/m;)Le/c/b/x$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le/c/b/a$a;->mergeFrom([BLe/c/b/m;)Le/c/b/a$a;

    move-result-object p1

    return-object p1
.end method
