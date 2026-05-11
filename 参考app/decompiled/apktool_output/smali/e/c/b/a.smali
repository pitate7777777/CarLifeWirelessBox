.class public abstract Le/c/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/c/b/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/b/a$a;
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
        "Le/c/b/x;"
    }
.end annotation


# instance fields
.field public memoizedHashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Le/c/b/a;->memoizedHashCode:I

    return-void
.end method

.method public static addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 0
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

    invoke-static {p0, p1}, Le/c/b/a$a;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method public static checkByteStringIsUtf8(Le/c/b/g;)V
    .locals 4

    check-cast p0, Le/c/b/g$f;

    .line 1
    invoke-virtual {p0}, Le/c/b/g$f;->k()I

    move-result v0

    iget-object v1, p0, Le/c/b/g$f;->h:[B

    invoke-virtual {p0}, Le/c/b/g$f;->size()I

    move-result p0

    add-int/2addr p0, v0

    .line 2
    sget-object v2, Le/c/b/f0;->a:Le/c/b/f0$a;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v2, v3, v1, v0, p0}, Le/c/b/f0$a;->b(I[BII)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Byte string is not UTF-8."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Serializing "

    invoke-static {v0}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " threw an IOException (should never happen)."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public newUninitializedMessageException()Le/c/b/c0;
    .locals 1

    new-instance v0, Le/c/b/c0;

    invoke-direct {v0}, Le/c/b/c0;-><init>()V

    return-object v0
.end method

.method public toByteArray()[B
    .locals 3

    :try_start_0
    invoke-interface {p0}, Le/c/b/x;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Le/c/b/i;->r([B)Le/c/b/i;

    move-result-object v1

    invoke-interface {p0, v1}, Le/c/b/x;->writeTo(Le/c/b/i;)V

    .line 1
    invoke-virtual {v1}, Le/c/b/i;->t()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "byte array"

    invoke-direct {p0, v2}, Le/c/b/a;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toByteString()Le/c/b/g;
    .locals 3

    :try_start_0
    invoke-interface {p0}, Le/c/b/x;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Le/c/b/g;->f(I)Le/c/b/g$d;

    move-result-object v0

    .line 1
    iget-object v1, v0, Le/c/b/g$d;->a:Le/c/b/i;

    .line 2
    invoke-interface {p0, v1}, Le/c/b/x;->writeTo(Le/c/b/i;)V

    .line 3
    iget-object v1, v0, Le/c/b/g$d;->a:Le/c/b/i;

    .line 4
    invoke-virtual {v1}, Le/c/b/i;->t()I

    move-result v1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Le/c/b/g$f;

    iget-object v0, v0, Le/c/b/g$d;->b:[B

    invoke-direct {v1, v0}, Le/c/b/g$f;-><init>([B)V

    return-object v1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-direct {p0, v2}, Le/c/b/a;->getSerializingExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .locals 3

    invoke-interface {p0}, Le/c/b/x;->getSerializedSize()I

    move-result v0

    .line 1
    invoke-static {v0}, Le/c/b/i;->n(I)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v2, 0x1000

    if-le v1, v2, :cond_0

    const/16 v1, 0x1000

    .line 2
    :cond_0
    new-instance v2, Le/c/b/i$e;

    invoke-direct {v2, p1, v1}, Le/c/b/i$e;-><init>(Ljava/io/OutputStream;I)V

    .line 3
    invoke-virtual {v2, v0}, Le/c/b/i;->F(I)V

    .line 4
    invoke-interface {p0, v2}, Le/c/b/x;->writeTo(Le/c/b/i;)V

    .line 5
    iget p1, v2, Le/c/b/i$b;->f:I

    if-lez p1, :cond_1

    invoke-virtual {v2}, Le/c/b/i$e;->J()V

    :cond_1
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    invoke-interface {p0}, Le/c/b/x;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Le/c/b/i;->j(I)I

    move-result v0

    .line 1
    new-instance v1, Le/c/b/i$e;

    invoke-direct {v1, p1, v0}, Le/c/b/i$e;-><init>(Ljava/io/OutputStream;I)V

    .line 2
    invoke-interface {p0, v1}, Le/c/b/x;->writeTo(Le/c/b/i;)V

    .line 3
    iget p1, v1, Le/c/b/i$b;->f:I

    if-lez p1, :cond_0

    invoke-virtual {v1}, Le/c/b/i$e;->J()V

    :cond_0
    return-void
.end method
