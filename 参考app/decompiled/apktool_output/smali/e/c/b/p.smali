.class public abstract Le/c/b/p;
.super Le/c/b/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/b/p$i;,
        Le/c/b/p$h;,
        Le/c/b/p$d;,
        Le/c/b/p$k;,
        Le/c/b/p$c;,
        Le/c/b/p$g;,
        Le/c/b/p$f;,
        Le/c/b/p$e;,
        Le/c/b/p$b;,
        Le/c/b/p$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Le/c/b/p<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Le/c/b/p$b<",
        "TMessageType;TBuilderType;>;>",
        "Le/c/b/a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public memoizedSerializedSize:I

.field public unknownFields:Le/c/b/d0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/c/b/a;-><init>()V

    .line 1
    sget-object v0, Le/c/b/d0;->f:Le/c/b/d0;

    .line 2
    iput-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    const/4 v0, -0x1

    iput v0, p0, Le/c/b/p;->memoizedSerializedSize:I

    return-void
.end method

.method public static synthetic access$200(Le/c/b/k;)Le/c/b/p$g;
    .locals 0

    invoke-static {p0}, Le/c/b/p;->checkIsLite(Le/c/b/k;)Le/c/b/p$g;

    move-result-object p0

    return-object p0
.end method

.method public static checkIsLite(Le/c/b/k;)Le/c/b/p$g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Le/c/b/p$e<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Ljava/lang/Object<",
            "TMessageType;TBuilderType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/c/b/k<",
            "TMessageType;TT;>;)",
            "Le/c/b/p$g<",
            "TMessageType;TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    check-cast p0, Le/c/b/p$g;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 1
    throw p0
.end method

.method public static checkMessageInitialized(Le/c/b/p;)Le/c/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/c/b/p<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Le/c/b/p;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le/c/b/a;->newUninitializedMessageException()Le/c/b/c0;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Le/c/b/s;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Le/c/b/s;-><init>(Ljava/lang/String;)V

    .line 2
    throw v0

    :cond_0
    const/4 p0, 0x0

    .line 3
    throw p0

    :cond_1
    return-object p0
.end method

.method public static emptyBooleanList()Le/c/b/r$a;
    .locals 1

    .line 1
    sget-object v0, Le/c/b/d;->h:Le/c/b/d;

    return-object v0
.end method

.method public static emptyDoubleList()Le/c/b/r$b;
    .locals 1

    .line 1
    sget-object v0, Le/c/b/j;->h:Le/c/b/j;

    return-object v0
.end method

.method public static emptyFloatList()Le/c/b/r$e;
    .locals 1

    .line 1
    sget-object v0, Le/c/b/o;->h:Le/c/b/o;

    return-object v0
.end method

.method public static emptyIntList()Le/c/b/r$f;
    .locals 1

    .line 1
    sget-object v0, Le/c/b/q;->h:Le/c/b/q;

    return-object v0
.end method

.method public static emptyLongList()Le/c/b/r$g;
    .locals 1

    .line 1
    sget-object v0, Le/c/b/w;->h:Le/c/b/w;

    return-object v0
.end method

.method public static emptyProtobufList()Le/c/b/r$h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Le/c/b/r$h<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/c/b/a0;->g:Le/c/b/a0;

    return-object v0
.end method

.method private final ensureUnknownFieldsInitialized()V
    .locals 5

    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    .line 1
    sget-object v1, Le/c/b/d0;->f:Le/c/b/d0;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Le/c/b/d0;

    const/16 v1, 0x8

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3
    invoke-direct {v0, v3, v2, v1, v4}, Le/c/b/d0;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 4
    iput-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    :cond_0
    return-void
.end method

.method public static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Generated message class \""

    invoke-static {v1}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" missing method \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final isInitialized(Le/c/b/p;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/c/b/p<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    sget-object v0, Le/c/b/p$j;->e:Le/c/b/p$j;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Le/c/b/p;->dynamicMethod(Le/c/b/p$j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final makeImmutable(Le/c/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/c/b/p<",
            "TT;*>;>(TT;)V"
        }
    .end annotation

    sget-object v0, Le/c/b/p$j;->h:Le/c/b/p$j;

    invoke-virtual {p0, v0}, Le/c/b/p;->dynamicMethod(Le/c/b/p$j;)Ljava/lang/Object;

    return-void
.end method

.method public static mutableCopy(Le/c/b/r$a;)Le/c/b/r$a;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    check-cast p0, Le/c/b/d;

    invoke-virtual {p0, v0}, Le/c/b/d;->f(I)Le/c/b/r$a;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(Le/c/b/r$b;)Le/c/b/r$b;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    check-cast p0, Le/c/b/j;

    invoke-virtual {p0, v0}, Le/c/b/j;->f(I)Le/c/b/r$b;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(Le/c/b/r$e;)Le/c/b/r$e;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    check-cast p0, Le/c/b/o;

    invoke-virtual {p0, v0}, Le/c/b/o;->h(I)Le/c/b/r$e;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(Le/c/b/r$f;)Le/c/b/r$f;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    check-cast p0, Le/c/b/q;

    invoke-virtual {p0, v0}, Le/c/b/q;->h(I)Le/c/b/r$f;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(Le/c/b/r$g;)Le/c/b/r$g;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    check-cast p0, Le/c/b/w;

    invoke-virtual {p0, v0}, Le/c/b/w;->h(I)Le/c/b/r$g;

    move-result-object p0

    return-object p0
.end method

.method public static mutableCopy(Le/c/b/r$h;)Le/c/b/r$h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Le/c/b/r$h<",
            "TE;>;)",
            "Le/c/b/r$h<",
            "TE;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-interface {p0, v0}, Le/c/b/r$h;->b(I)Le/c/b/r$h;

    move-result-object p0

    return-object p0
.end method

.method public static newRepeatedGeneratedExtension(Le/c/b/x;Le/c/b/x;Le/c/b/r$d;ILe/c/b/h0;ZLjava/lang/Class;)Le/c/b/p$g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Le/c/b/x;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Le/c/b/x;",
            "Le/c/b/r$d<",
            "*>;I",
            "Le/c/b/h0;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Le/c/b/p$g<",
            "TContainingType;TType;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p6

    new-instance v0, Le/c/b/p$g;

    new-instance v7, Le/c/b/p$f;

    const/4 v5, 0x1

    move-object v1, v7

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Le/c/b/p$f;-><init>(Le/c/b/r$d;ILe/c/b/h0;ZZ)V

    invoke-direct {v0, p0, p6, p1, v7}, Le/c/b/p$g;-><init>(Le/c/b/x;Ljava/lang/Object;Le/c/b/x;Le/c/b/p$f;)V

    return-object v0
.end method

.method public static newSingularGeneratedExtension(Le/c/b/x;Ljava/lang/Object;Le/c/b/x;Le/c/b/r$d;ILe/c/b/h0;Ljava/lang/Class;)Le/c/b/p$g;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Le/c/b/x;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Le/c/b/x;",
            "Le/c/b/r$d<",
            "*>;I",
            "Le/c/b/h0;",
            "Ljava/lang/Class;",
            ")",
            "Le/c/b/p$g<",
            "TContainingType;TType;>;"
        }
    .end annotation

    new-instance p6, Le/c/b/p$g;

    new-instance v6, Le/c/b/p$f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Le/c/b/p$f;-><init>(Le/c/b/r$d;ILe/c/b/h0;ZZ)V

    invoke-direct {p6, p0, p1, p2, v6}, Le/c/b/p$g;-><init>(Le/c/b/x;Ljava/lang/Object;Le/c/b/x;Le/c/b/p$f;)V

    return-object p6
.end method

.method public static parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/c/b/p<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Le/c/b/m;->a()Le/c/b/m;

    move-result-object v0

    invoke-static {p0, p1, v0}, Le/c/b/p;->parsePartialDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    invoke-static {p0}, Le/c/b/p;->checkMessageInitialized(Le/c/b/p;)Le/c/b/p;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/c/b/p<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Le/c/b/m;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Le/c/b/p;->parsePartialDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    invoke-static {p0}, Le/c/b/p;->checkMessageInitialized(Le/c/b/p;)Le/c/b/p;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Le/c/b/p;Le/c/b/g;)Le/c/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/c/b/p<",
            "TT;*>;>(TT;",
            "Le/c/b/g;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Le/c/b/m;->a()Le/c/b/m;

    move-result-object v0

    invoke-static {p0, p1, v0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/g;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    invoke-static {p0}, Le/c/b/p;->checkMessageInitialized(Le/c/b/p;)Le/c/b/p;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Le/c/b/p;Le/c/b/g;Le/c/b/m;)Le/c/b/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/c/b/p<",
            "TT;*>;>(TT;",
            "Le/c/b/g;",
            "Le/c/b/m;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Le/c/b/p;->parsePartialFrom(Le/c/b/p;Le/c/b/g;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    invoke-static {p0}, Le/c/b/p;->checkMessageInitialized(Le/c/b/p;)Le/c/b/p;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Le/c/b/p;Le/c/b/h;)Le/c/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/c/b/p<",
            "TT;*>;>(TT;",
            "Le/c/b/h;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Le/c/b/m;->a()Le/c/b/m;

    move-result-object v0

    invoke-static {p0, p1, v0}, Le/c/b/p;->parseFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/c/b/p<",
            "TT;*>;>(TT;",
            "Le/c/b/h;",
            "Le/c/b/m;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Le/c/b/p;->parsePartialFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    invoke-static {p0}, Le/c/b/p;->checkMessageInitialized(Le/c/b/p;)Le/c/b/p;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Le/c/b/p;Ljava/io/InputStream;)Le/c/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/c/b/p<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Le/c/b/h;->c(Ljava/io/InputStream;)Le/c/b/h;

    move-result-object p1

    invoke-static {}, Le/c/b/m;->a()Le/c/b/m;

    move-result-object v0

    invoke-static {p0, p1, v0}, Le/c/b/p;->parsePartialFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    invoke-static {p0}, Le/c/b/p;->checkMessageInitialized(Le/c/b/p;)Le/c/b/p;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/c/b/p<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Le/c/b/m;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Le/c/b/h;->c(Ljava/io/InputStream;)Le/c/b/h;

    move-result-object p1

    invoke-static {p0, p1, p2}, Le/c/b/p;->parsePartialFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    invoke-static {p0}, Le/c/b/p;->checkMessageInitialized(Le/c/b/p;)Le/c/b/p;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Le/c/b/p;[B)Le/c/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/c/b/p<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    invoke-static {}, Le/c/b/m;->a()Le/c/b/m;

    move-result-object v0

    invoke-static {p0, p1, v0}, Le/c/b/p;->parsePartialFrom(Le/c/b/p;[BLe/c/b/m;)Le/c/b/p;

    move-result-object p0

    invoke-static {p0}, Le/c/b/p;->checkMessageInitialized(Le/c/b/p;)Le/c/b/p;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Le/c/b/p;[BLe/c/b/m;)Le/c/b/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/c/b/p<",
            "TT;*>;>(TT;[B",
            "Le/c/b/m;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Le/c/b/p;->parsePartialFrom(Le/c/b/p;[BLe/c/b/m;)Le/c/b/p;

    move-result-object p0

    invoke-static {p0}, Le/c/b/p;->checkMessageInitialized(Le/c/b/p;)Le/c/b/p;

    move-result-object p0

    return-object p0
.end method

.method public static parsePartialDelimitedFrom(Le/c/b/p;Ljava/io/InputStream;Le/c/b/m;)Le/c/b/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/c/b/p<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Le/c/b/m;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0, p1}, Le/c/b/h;->o(ILjava/io/InputStream;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v1, Le/c/b/a$a$a;

    invoke-direct {v1, p1, v0}, Le/c/b/a$a$a;-><init>(Ljava/io/InputStream;I)V

    invoke-static {v1}, Le/c/b/h;->c(Ljava/io/InputStream;)Le/c/b/h;

    move-result-object p1

    invoke-static {p0, p1, p2}, Le/c/b/p;->parsePartialFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, Le/c/b/h;->a(I)V
    :try_end_1
    .catch Le/c/b/s; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Le/c/b/s;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Le/c/b/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parsePartialFrom(Le/c/b/p;Le/c/b/g;Le/c/b/m;)Le/c/b/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/c/b/p<",
            "TT;*>;>(TT;",
            "Le/c/b/g;",
            "Le/c/b/m;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Le/c/b/g;->g()Le/c/b/h;

    move-result-object p1

    invoke-static {p0, p1, p2}, Le/c/b/p;->parsePartialFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0
    :try_end_0
    .catch Le/c/b/s; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, Le/c/b/h;->a(I)V
    :try_end_1
    .catch Le/c/b/s; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catch Le/c/b/s; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    throw p0
.end method

.method public static parsePartialFrom(Le/c/b/p;Le/c/b/h;)Le/c/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/c/b/p<",
            "TT;*>;>(TT;",
            "Le/c/b/h;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Le/c/b/m;->a()Le/c/b/m;

    move-result-object v0

    invoke-static {p0, p1, v0}, Le/c/b/p;->parsePartialFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0

    return-object p0
.end method

.method public static parsePartialFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/c/b/p<",
            "TT;*>;>(TT;",
            "Le/c/b/h;",
            "Le/c/b/m;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Le/c/b/p$j;->i:Le/c/b/p$j;

    invoke-virtual {p0, v0}, Le/c/b/p;->dynamicMethod(Le/c/b/p$j;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/c/b/p;

    :try_start_0
    sget-object v0, Le/c/b/p$j;->g:Le/c/b/p$j;

    invoke-virtual {p0, v0, p1, p2}, Le/c/b/p;->dynamicMethod(Le/c/b/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Le/c/b/p;->makeImmutable()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Le/c/b/s;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Le/c/b/s;

    throw p0

    :cond_0
    throw p0
.end method

.method public static parsePartialFrom(Le/c/b/p;[BLe/c/b/m;)Le/c/b/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/c/b/p<",
            "TT;*>;>(TT;[B",
            "Le/c/b/m;",
            ")TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Le/c/b/h;->d([BII)Le/c/b/h;

    move-result-object p1

    .line 2
    invoke-static {p0, p1, p2}, Le/c/b/p;->parsePartialFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p0
    :try_end_0
    .catch Le/c/b/s; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1, v1}, Le/c/b/h;->a(I)V
    :try_end_1
    .catch Le/c/b/s; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catch Le/c/b/s; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    throw p0
.end method


# virtual methods
.method public dynamicMethod(Le/c/b/p$j;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Le/c/b/p;->dynamicMethod(Le/c/b/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dynamicMethod(Le/c/b/p$j;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Le/c/b/p;->dynamicMethod(Le/c/b/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract dynamicMethod(Le/c/b/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public equals(Le/c/b/p$d;Le/c/b/x;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Le/c/b/p;->getDefaultInstanceForType()Le/c/b/p;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p2, Le/c/b/p;

    invoke-virtual {p0, p1, p2}, Le/c/b/p;->visit(Le/c/b/p$k;Le/c/b/p;)V

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Le/c/b/p;->getDefaultInstanceForType()Le/c/b/p;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    :try_start_0
    sget-object v1, Le/c/b/p$d;->a:Le/c/b/p$d;

    check-cast p1, Le/c/b/p;

    invoke-virtual {p0, v1, p1}, Le/c/b/p;->visit(Le/c/b/p$k;Le/c/b/p;)V
    :try_end_0
    .catch Le/c/b/p$d$a; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v2
.end method

.method public final getDefaultInstanceForType()Le/c/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    sget-object v0, Le/c/b/p$j;->k:Le/c/b/p$j;

    invoke-virtual {p0, v0}, Le/c/b/p;->dynamicMethod(Le/c/b/p$j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/b/p;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Le/c/b/x;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p;->getDefaultInstanceForType()Le/c/b/p;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Le/c/b/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/z<",
            "TMessageType;>;"
        }
    .end annotation

    sget-object v0, Le/c/b/p$j;->l:Le/c/b/p$j;

    invoke-virtual {p0, v0}, Le/c/b/p;->dynamicMethod(Le/c/b/p$j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/b/z;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Le/c/b/a;->memoizedHashCode:I

    if-nez v0, :cond_0

    new-instance v0, Le/c/b/p$h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/c/b/p$h;-><init>(Le/c/b/p$a;)V

    invoke-virtual {p0, v0, p0}, Le/c/b/p;->visit(Le/c/b/p$k;Le/c/b/p;)V

    .line 1
    iget v0, v0, Le/c/b/p$h;->a:I

    .line 2
    iput v0, p0, Le/c/b/a;->memoizedHashCode:I

    :cond_0
    iget v0, p0, Le/c/b/a;->memoizedHashCode:I

    return v0
.end method

.method public hashCode(Le/c/b/p$h;)I
    .locals 2

    iget v0, p0, Le/c/b/a;->memoizedHashCode:I

    if-nez v0, :cond_0

    .line 3
    iget v0, p1, Le/c/b/p$h;->a:I

    const/4 v1, 0x0

    .line 4
    iput v1, p1, Le/c/b/p$h;->a:I

    .line 5
    invoke-virtual {p0, p1, p0}, Le/c/b/p;->visit(Le/c/b/p$k;Le/c/b/p;)V

    .line 6
    iget v1, p1, Le/c/b/p$h;->a:I

    .line 7
    iput v1, p0, Le/c/b/a;->memoizedHashCode:I

    .line 8
    iput v0, p1, Le/c/b/p$h;->a:I

    .line 9
    :cond_0
    iget p1, p0, Le/c/b/a;->memoizedHashCode:I

    return p1
.end method

.method public final isInitialized()Z
    .locals 2

    sget-object v0, Le/c/b/p$j;->e:Le/c/b/p$j;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Le/c/b/p;->dynamicMethod(Le/c/b/p$j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeImmutable()V
    .locals 2

    sget-object v0, Le/c/b/p$j;->h:Le/c/b/p$j;

    invoke-virtual {p0, v0}, Le/c/b/p;->dynamicMethod(Le/c/b/p$j;)Ljava/lang/Object;

    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Le/c/b/d0;->e:Z

    return-void
.end method

.method public mergeLengthDelimitedField(ILe/c/b/g;)V
    .locals 1

    invoke-direct {p0}, Le/c/b/p;->ensureUnknownFieldsInitialized()V

    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    .line 1
    invoke-virtual {v0}, Le/c/b/d0;->a()V

    if-eqz p1, :cond_0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1, p2}, Le/c/b/d0;->e(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final mergeUnknownFields(Le/c/b/d0;)V
    .locals 1

    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-static {v0, p1}, Le/c/b/d0;->d(Le/c/b/d0;Le/c/b/d0;)Le/c/b/d0;

    move-result-object p1

    iput-object p1, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    return-void
.end method

.method public mergeVarintField(II)V
    .locals 3

    invoke-direct {p0}, Le/c/b/p;->ensureUnknownFieldsInitialized()V

    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    .line 1
    invoke-virtual {v0}, Le/c/b/d0;->a()V

    if-eqz p1, :cond_0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x0

    int-to-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/c/b/d0;->e(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final newBuilderForType()Le/c/b/p$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    sget-object v0, Le/c/b/p$j;->j:Le/c/b/p$j;

    invoke-virtual {p0, v0}, Le/c/b/p;->dynamicMethod(Le/c/b/p$j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/b/p$b;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Le/c/b/x$a;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p;->newBuilderForType()Le/c/b/p$b;

    move-result-object v0

    return-object v0
.end method

.method public parseUnknownField(ILe/c/b/h;)Z
    .locals 2

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0}, Le/c/b/p;->ensureUnknownFieldsInitialized()V

    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-virtual {v0, p1, p2}, Le/c/b/d0;->c(ILe/c/b/h;)Z

    move-result p1

    return p1
.end method

.method public final toBuilder()Le/c/b/p$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    sget-object v0, Le/c/b/p$j;->j:Le/c/b/p$j;

    invoke-virtual {p0, v0}, Le/c/b/p;->dynamicMethod(Le/c/b/p$j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c/b/p$b;

    invoke-virtual {v0, p0}, Le/c/b/p$b;->mergeFrom(Le/c/b/p;)Le/c/b/p$b;

    return-object v0
.end method

.method public bridge synthetic toBuilder()Le/c/b/x$a;
    .locals 1

    invoke-virtual {p0}, Le/c/b/p;->toBuilder()Le/c/b/p$b;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Ld/b/k/m$i;->Y0(Le/c/b/x;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visit(Le/c/b/p$k;Le/c/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/p$k;",
            "TMessageType;)V"
        }
    .end annotation

    sget-object v0, Le/c/b/p$j;->f:Le/c/b/p$j;

    invoke-virtual {p0, v0, p1, p2}, Le/c/b/p;->dynamicMethod(Le/c/b/p$j;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    iget-object p2, p2, Le/c/b/p;->unknownFields:Le/c/b/d0;

    invoke-interface {p1, v0, p2}, Le/c/b/p$k;->c(Le/c/b/d0;Le/c/b/d0;)Le/c/b/d0;

    move-result-object p1

    iput-object p1, p0, Le/c/b/p;->unknownFields:Le/c/b/d0;

    return-void
.end method
