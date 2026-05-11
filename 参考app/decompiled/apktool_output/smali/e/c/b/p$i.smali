.class public Le/c/b/p$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/c/b/p$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# static fields
.field public static final a:Le/c/b/p$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/b/p$i;

    invoke-direct {v0}, Le/c/b/p$i;-><init>()V

    sput-object v0, Le/c/b/p$i;->a:Le/c/b/p$i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/c/b/r$e;Le/c/b/r$e;)Le/c/b/r$e;
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    move-object v2, p1

    check-cast v2, Le/c/b/c;

    .line 1
    iget-boolean v2, v2, Le/c/b/c;->e:Z

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    .line 2
    check-cast p1, Le/c/b/o;

    invoke-virtual {p1, v1}, Le/c/b/o;->h(I)Le/c/b/r$e;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object p2, p1

    :cond_2
    return-object p2
.end method

.method public b(Le/c/b/r$h;Le/c/b/r$h;)Le/c/b/r$h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/c/b/r$h<",
            "TT;>;",
            "Le/c/b/r$h<",
            "TT;>;)",
            "Le/c/b/r$h<",
            "TT;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    move-object v2, p1

    check-cast v2, Le/c/b/c;

    .line 1
    iget-boolean v2, v2, Le/c/b/c;->e:Z

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    .line 2
    invoke-interface {p1, v1}, Le/c/b/r$h;->b(I)Le/c/b/r$h;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object p2, p1

    :cond_2
    return-object p2
.end method

.method public c(Le/c/b/d0;Le/c/b/d0;)Le/c/b/d0;
    .locals 1

    .line 1
    sget-object v0, Le/c/b/d0;->f:Le/c/b/d0;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1, p2}, Le/c/b/d0;->d(Le/c/b/d0;Le/c/b/d0;)Le/c/b/d0;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p3, :cond_0

    move-object p2, p4

    :cond_0
    return-object p2
.end method

.method public e(ZZZZ)Z
    .locals 0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    return p2
.end method

.method public f(Le/c/b/r$f;Le/c/b/r$f;)Le/c/b/r$f;
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    move-object v2, p1

    check-cast v2, Le/c/b/c;

    .line 1
    iget-boolean v2, v2, Le/c/b/c;->e:Z

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    .line 2
    check-cast p1, Le/c/b/q;

    invoke-virtual {p1, v1}, Le/c/b/q;->h(I)Le/c/b/r$f;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object p2, p1

    :cond_2
    return-object p2
.end method

.method public g(ZLe/c/b/g;ZLe/c/b/g;)Le/c/b/g;
    .locals 0

    if-eqz p3, :cond_0

    move-object p2, p4

    :cond_0
    return-object p2
.end method

.method public h(ZFZF)F
    .locals 0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    return p2
.end method

.method public i(ZJZJ)J
    .locals 0

    if-eqz p4, :cond_0

    move-wide p2, p5

    :cond_0
    return-wide p2
.end method

.method public j(ZDZD)D
    .locals 0

    if-eqz p4, :cond_0

    move-wide p2, p5

    :cond_0
    return-wide p2
.end method

.method public k(Le/c/b/r$g;Le/c/b/r$g;)Le/c/b/r$g;
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    move-object v2, p1

    check-cast v2, Le/c/b/c;

    .line 1
    iget-boolean v2, v2, Le/c/b/c;->e:Z

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    .line 2
    check-cast p1, Le/c/b/w;

    invoke-virtual {p1, v1}, Le/c/b/w;->h(I)Le/c/b/r$g;

    move-result-object p1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object p2, p1

    :cond_2
    return-object p2
.end method

.method public l(ZIZI)I
    .locals 0

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    return p2
.end method

.method public m(Le/c/b/n;Le/c/b/n;)Le/c/b/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/n<",
            "Le/c/b/p$f;",
            ">;",
            "Le/c/b/n<",
            "Le/c/b/p$f;",
            ">;)",
            "Le/c/b/n<",
            "Le/c/b/p$f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Le/c/b/n;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/c/b/n;->a()Le/c/b/n;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p2, Le/c/b/n;->a:Le/c/b/b0;

    invoke-virtual {v1}, Le/c/b/b0;->e()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p2, Le/c/b/n;->a:Le/c/b/b0;

    invoke-virtual {v1, v0}, Le/c/b/b0;->d(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/c/b/n;->c(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p2, Le/c/b/n;->a:Le/c/b/b0;

    invoke-virtual {p2}, Le/c/b/b0;->f()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p1, v0}, Le/c/b/n;->c(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_2
    return-object p1
.end method
