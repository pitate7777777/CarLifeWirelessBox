.class public final Lf/k/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/k/f;
.implements Ljava/io/Serializable;


# instance fields
.field public final e:Lf/k/f;

.field public final f:Lf/k/f$a;


# direct methods
.method public constructor <init>(Lf/k/f;Lf/k/f$a;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/k/c;->e:Lf/k/f;

    iput-object p2, p0, Lf/k/c;->f:Lf/k/f$a;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    const/4 v0, 0x2

    move-object v1, p0

    :goto_0
    iget-object v1, v1, Lf/k/c;->e:Lf/k/f;

    instance-of v2, v1, Lf/k/c;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Lf/k/c;

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lf/k/c;

    if-eqz v1, :cond_5

    check-cast p1, Lf/k/c;

    invoke-virtual {p1}, Lf/k/c;->a()I

    move-result v1

    invoke-virtual {p0}, Lf/k/c;->a()I

    move-result v2

    if-ne v1, v2, :cond_5

    if-eqz p1, :cond_3

    move-object v1, p0

    .line 1
    :goto_0
    iget-object v2, v1, Lf/k/c;->f:Lf/k/f$a;

    .line 2
    invoke-interface {v2}, Lf/k/f$a;->getKey()Lf/k/f$b;

    move-result-object v3

    invoke-virtual {p1, v3}, Lf/k/c;->get(Lf/k/f$b;)Lf/k/f$a;

    move-result-object v3

    invoke-static {v3, v2}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, v1, Lf/k/c;->e:Lf/k/f;

    instance-of v2, v1, Lf/k/c;

    if-eqz v2, :cond_1

    check-cast v1, Lf/k/c;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    check-cast v1, Lf/k/f$a;

    .line 4
    invoke-interface {v1}, Lf/k/f$a;->getKey()Lf/k/f$b;

    move-result-object v2

    invoke-virtual {p1, v2}, Lf/k/c;->get(Lf/k/f$b;)Lf/k/f$a;

    move-result-object p1

    invoke-static {p1, v1}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_5

    goto :goto_2

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    throw p1

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public fold(Ljava/lang/Object;Lf/m/a/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lf/m/a/c<",
            "-TR;-",
            "Lf/k/f$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lf/k/c;->e:Lf/k/f;

    invoke-interface {v0, p1, p2}, Lf/k/f;->fold(Ljava/lang/Object;Lf/m/a/c;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lf/k/c;->f:Lf/k/f$a;

    invoke-interface {p2, p1, v0}, Lf/m/a/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lf/k/f$b;)Lf/k/f$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lf/k/f$a;",
            ">(",
            "Lf/k/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lf/k/c;->f:Lf/k/f$a;

    invoke-interface {v1, p1}, Lf/k/f$a;->get(Lf/k/f$b;)Lf/k/f$a;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lf/k/c;->e:Lf/k/f;

    instance-of v1, v0, Lf/k/c;

    if-eqz v1, :cond_1

    check-cast v0, Lf/k/c;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lf/k/f;->get(Lf/k/f$b;)Lf/k/f$a;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lf/k/c;->e:Lf/k/f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lf/k/c;->f:Lf/k/f$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public minusKey(Lf/k/f$b;)Lf/k/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/k/f$b<",
            "*>;)",
            "Lf/k/f;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lf/k/c;->f:Lf/k/f$a;

    invoke-interface {v0, p1}, Lf/k/f$a;->get(Lf/k/f$b;)Lf/k/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lf/k/c;->e:Lf/k/f;

    return-object p1

    :cond_0
    iget-object v0, p0, Lf/k/c;->e:Lf/k/f;

    invoke-interface {v0, p1}, Lf/k/f;->minusKey(Lf/k/f$b;)Lf/k/f;

    move-result-object p1

    iget-object v0, p0, Lf/k/c;->e:Lf/k/f;

    if-ne p1, v0, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    sget-object v0, Lf/k/h;->e:Lf/k/h;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lf/k/c;->f:Lf/k/f$a;

    goto :goto_0

    :cond_2
    new-instance v0, Lf/k/c;

    iget-object v1, p0, Lf/k/c;->f:Lf/k/f$a;

    invoke-direct {v0, p1, v1}, Lf/k/c;-><init>(Lf/k/f;Lf/k/f$a;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "["

    invoke-static {v0}, Le/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lf/k/c$a;->e:Lf/k/c$a;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lf/k/c;->fold(Ljava/lang/Object;Lf/m/a/c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
